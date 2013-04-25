namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  User.create!(email:    "itay@contactim.com",
                       password: "foobar",
                       password_confirmation: "foobar")
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!( email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

