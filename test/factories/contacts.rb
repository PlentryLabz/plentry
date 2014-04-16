# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name 'Contact Name'
    phone '+7 905 021 02 02'
    email 'contact@mail.com'
    message 'contact message'
  end
end
