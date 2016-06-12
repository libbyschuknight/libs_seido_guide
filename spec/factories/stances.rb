FactoryGirl.define do
  factory :stance do
    japanese_name "Kiba Dachi"
    english_name  "Straddle Stance"
    description   "Horse riding stance"
    image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
  end

end
