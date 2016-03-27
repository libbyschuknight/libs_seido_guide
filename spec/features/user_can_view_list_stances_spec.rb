require 'rails_helper'

RSpec.feature "User can view a list of stances", type: :feature do

  background do
    @stance = FactoryGirl.create(:stance)
  end

  scenario "shows a list of stance" do
    FactoryGirl.create(:stance, japanese_name: "Kokutzo Dachi" )
    visit stances_path(@stances)

    expect(page).to have_content("Kiba Dachi")
    expect(page).to have_content("Kokutzo Dachi")
  end

  scenario "and user clicks name and is redirected to stance page" do
    visit stances_path(@stances)
    click_on("View details")

    expect(page).to have_content("Kiba Dachi")
    expect(page).to have_content("Straddle Stance")
  end

  scenario "and user clicks add stance link, redirected to new stance page" do
    visit stances_path(@stances)
    click_on("Add stance")

    expect(page).to have_content("Japanese name English name Description Image")
  end

end
