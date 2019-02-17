require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) {FactoryBot.create :user}

  # describe "associations" do
  #   it {should belong_to :position}
  # end

  describe "validates" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:email)}
    it {should validate_uniqueness_of(:email).ignoring_case_sensitivity}
  end

  context "when email is invalid" do
    before {user.email = "usergmail.com"}
    it {expect(user).to_not match /\A[^@\s]+@[^@\s]+\z/}
  end

  # describe ".name_asc" do
  #   let(:user1) {FactoryBot.create :user1}
  #   let(:user2) {FactoryBot.create :user2}
  #   let(:user3) {FactoryBot.create :user3}
  #   it "return a sorted array of result that match" do
  #     expect(User.all.name_asc).to eq [user, user1, user2, user3]
  #   end
  # end

  # describe "#admin?" do
  #   let!(:admin) {FactoryBot.create :admin}
  #   it "is admin" do
  #     expect(admin.is_admin?).to be_truthy
  #   end

  #   it "is not admin" do
  #     expect(user.is_admin?).to be_falsey
  #   end
  # end
end
