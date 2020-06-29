require "rails_helper"

RSpec.feature "Sign In" do
    background do
        @user = FactoryBot.create(:user)
    end

    scenario "Successfully Sign In" do
        sign_in(@user)
        
        expect(page).to have_content "Profile"
    end

    scenario "Unsuccessfully Sign In" do
        visit new_user_session_path

        fill_in :user_email , with: "wrongemail"
        fill_in :user_password , with: "wrongpassword"
        click_on "Log in"
        expect(page).not_to have_content "Profile"

    end


end
