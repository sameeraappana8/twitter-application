require "rails_helper"

RSpec.feature "User visits homepage" do
    scenario "homepage loading successful and user sees a title" do
        visit root_path
        expect(page).to have_content "Posts"
    end
end
