require "rails_helper"

RSpec.describe "Creating post" do
    let(:user) { FactoryBot.create(:user) }

    scenario "Successfully create post" do
        sign_in user
        visit root_path

        expect(page).to have_selector("form")
        expect(page).to have_field(:post_post)
        fill_in :post_post , with: "My First Post"
        click_on "Create Post"

        expect(page).to have_content "My First Post"
    end

    scenario "Unsuccessful" do
        sign_in user
        visit root_path
        
        fill_in :post_post , with: ""
        click_on "Create Post"

        expect(page).to have_content "error"
    end
end
