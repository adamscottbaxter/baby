FactoryGirl.define do
  factory :sentence do |f|
    f.content { "mama" }
    f.date_spoken { DateTime.parse('2017-08-14') }
  end
end