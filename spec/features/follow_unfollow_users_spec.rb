require "rails_helper"

RSpec.feature "Following / Unfollowing users" do
    let(:ben) { FactoryBot.create(:user, username: "ben10") }
    let(:glen) { FactoryBot.create(:user, username: "glen10", email: "glen10@ex.com") }

    scenario "signed-in user can follow and unfollow other users" do
        sign_in ben
        visit user_path(glen)
        # expect(page).to have_content(glen.username)
        click_on "Follow"
        expect(page).not_to have_button("Follow")
        expect(page).to have_button("Unfollow")
    end
end
