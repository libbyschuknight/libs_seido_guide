require 'rails_helper'

RSpec.feature "User can view stance", type: :feature do

  scenario "shows stances' details" do
    stance = FactoryGirl.create(:stance)
    visit stance_path(stance)

    expect(page).to have_content(stance.japanese_name)
    expect(page).to have_content(stance.english_name)
    expect(page).to have_content(stance.description)
  end
end

#
# japanese_name "Kiba Dachi"
# english_name  "Straddle Stance"
# description   "Horse riding stance"
