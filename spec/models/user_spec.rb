require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "following and unfollowing other users" do
    let(:ben) { FactoryBot.create(:user, username: "ben10", email: "ben@example.com") }
    let(:glen) { FactoryBot.create(:user, username: "glen10", email: "glen@example.com") }

    it "adds relationships between two users" do
      ben.follow(glen)
      expect(ben.following?(glen)).to be_truthy
      expect(glen.followers).to include(ben)

      ben.unfollow(glen)
      expect(ben.following?(glen)).to be_falsey
      expect(glen.followers).not_to include(ben)
    end
  end
end
