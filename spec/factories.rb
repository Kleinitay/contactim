FactoryGirl.define do
  factory :user do
    email "itay@contactim.com"
    password "foobar"
    password_confirmation "foobar"
  end
end