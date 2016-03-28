FactoryGirl.define do 
  factory :user do 
    first_name 'bob'
    last_name 'newheart'
    username 'bobnewheart'
    email 'test@test.com'
    password 'password'
  end
end