require 'rails_helper'

RSpec.feature "User can view a list of stances", type: :feature do

  scenario "shows a list of stance" do
    visit stances_path(@stances)

    expect(page).to have_content("Kiba Dachi")
    expect(page).to have_content("Kokutzo Dachi")
  end

  scenario "and user clicks name and is redirected to stance page" do
    visit stances_path(@stances)
    click_on("Kiba Dachi")

    expect(page).to have_content("Kiba Dachi")
    expect(page).to have_content("Straddle Stance")
  end

  scenario "and user clicks add stance link, redirected to new stance page" do
    visit stances_path(@stances)
    click_on("Add Stance")

    expect(page).to have_content("New Stance")
  end

end
