require "spec_helper"

RSpec.describe User do
  context "New User Creation" do
    # it "User details should be valid" do
    #   # FactoryGirl.create(:user, email: 'testuser1@testuser1.com', password: 'testuser1', password_confirmation: 'testuser1', username: 'testuser1')
    #   # #Failed username/email has already been taken
    #   # FactoryGirl.create(:user, email: 'testuser1@testuser1.com', password: 'testuser1', password_confirmation: 'testuser1', username: 'testuser1')

    #   # FactoryGirl.create(:user, email: 'snm@snmmaurya.com', password: 'snmmaurya', password_confirmation: 'snmmaurya', username: 'snmmaurya')
    # end

    it "Valid User" do
      FactoryGirl.build(:user, :username => "snmmaurya").should be_valid
      FactoryGirl.build(:user, :username => "").should be_valid
    end

    it "Valid Email" do
      FactoryGirl.build(:user, :email => "snm@gm!@ail.com").should be_valid
      FactoryGirl.build(:user, :email => "snm@gmail.com").should be_valid
    end
  end
end

















# RSpec.describe User do
#   context "New User Creation" do
#     # it "User details should be valid" do
#     #   # FactoryGirl.create(:user, email: 'testuser1@testuser1.com', password: 'testuser1', password_confirmation: 'testuser1', username: 'testuser1')
#     #   # #Failed username/email has already been taken
#     #   # FactoryGirl.create(:user, email: 'testuser1@testuser1.com', password: 'testuser1', password_confirmation: 'testuser1', username: 'testuser1')

#     #   # FactoryGirl.create(:user, email: 'snm@snmmaurya.com', password: 'snmmaurya', password_confirmation: 'snmmaurya', username: 'snmmaurya')
#     # end

#     it "Valid User" do
#       FactoryGirl.build(:user, :username => "snmmaurya").should be_valid
#       FactoryGirl.build(:user, :username => "").should be_valid
#     end

#     it "Valid Email" do
#       FactoryGirl.build(:user, :email => "snm@gm!@ail.com").should be_valid
#       FactoryGirl.build(:user, :email => "snm@gmail.com").should be_valid
#     end
#   end
# end
