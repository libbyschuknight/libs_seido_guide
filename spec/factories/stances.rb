FactoryGirl.define do
  factory :stance do
    japanese_name "Kiba Dachi"
    english_name  "Straddle Stance"
    description   "Horse riding stance"
    # image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
    # commented out as controller spec not working, not sure why not, need to fix
  end

end
