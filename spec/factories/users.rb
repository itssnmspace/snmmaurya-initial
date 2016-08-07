FactoryGirl.define do
  factory :user do |user|
    user.username                           "testuser"
    user.email                              "testuser@test.com"
    user.password                           "testuser"
    user.password_confirmation              "testuser"
  end
end