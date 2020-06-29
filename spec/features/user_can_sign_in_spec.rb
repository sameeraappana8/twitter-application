require "rails_helper"

RSpec.feature "Sign In" do
    background do
        @user = User.create!(email: "Tracy08@gmail.com", password: "password", password_confirmation: "password")
    end

    scenario "Successfully Sign Up" do
        sign_in(@user)
        
        expect(page).to have_content "Profile"
    end

    scenario "Unsuccessfully Sign Up" do
        visit new_user_session_path

        fill_in :user_email , with: "wrongemail"
        fill_in :user_password , with: "wrongpassword"
        click_on "Log in"
        expect(page).not_to have_content "Profile"

    end


end
