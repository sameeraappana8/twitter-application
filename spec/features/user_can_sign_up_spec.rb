require "rails_helper"

RSpec.describe "Sign Up" do
    scenario "Successfully Sign Up" do
        visit new_user_registration_path

        fill_in :user_name , with: "Tracy Gill"
        fill_in :user_username , with: "Tracy08"
        fill_in :user_email , with: "Tracy08@gmail.com"
        fill_in :user_password , with: "password"
        fill_in :user_password_confirmation , with: "password"

        click_on "Sign up"

        expect(page).to have_content "Tracy Gill"
    end

    scenario "Unsuccessfully Sign Up" do
        visit new_user_registration_path

        fill_in :user_name , with: "Tracy Gill"
        fill_in :user_username , with: "Tracy8"
        fill_in :user_email , with: "Tracy08@gmail.com"
        fill_in :user_password , with: ""
        fill_in :user_password_confirmation , with: ""

        click_on "Sign up"

        expect(page).to have_content "problem"
    end


    end
