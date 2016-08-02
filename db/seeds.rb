# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless AdminUser.find_by email: "admin@snmmaurya.com"
  AdminUser.create(email: "admin@snmmaurya.com", password: "snmmaurya", password_confirmation: "snmmaurya")
end  

["master", "user"].each do |title|
  Role.where(title: title).first_or_create
end


["snm@snmmaurya.com", "usertwo@snmmaurya.com", "userthree@snmmaurya.com", "userfour@snmmaurya.com"].each do |user|
  unless User.find_by email: user
    User.create!(username: user.split("@").first, email: user, contact: '7666760715', role_id: Role.find_by(title: 'user').id, slug: user.split("@").first, password: 'snmmaurya', password_confirmation: 'snmmaurya')
  end
end