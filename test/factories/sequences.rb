FactoryGirl.define do

  sequence :body do |n|
    "comment #{n} body"
  end

  sequence :email do |n|
    "user#{n}@test.com"
  end

end