require 'rails_helper'

RSpec.feature "User can view stance", type: :feature do

  Stance.destroy_all

  let!(:stance) { FactoryGirl.create(:stance) }

  background do
    FactoryGirl.create(:stance, japanese_name: "Kokutzo Dachi")
    visit stance_path(stance)
  end

    scenario "shows stances' details" do
    expect(page).to have_content(stance.japanese_name)
    expect(page).to have_content(stance.english_name)
    expect(page).to have_content(stance.description)
  end

  feature "next button" do

    scenario "can view next button" do
      expect(page).to have_link("next")
    end

    scenario "clicks next button and goes to next stance" do
      click_on("next")
      expect(page).to have_content("Kokutzo Dachi")
    end

  end

  feature "previous button" do

    background do
      FactoryGirl.create(:stance, japanese_name: "Sanchin Dachi")
      stance = FactoryGirl.create(:stance)
      visit stance_path(stance)
    end

    scenario "can view previous button" do
      expect(page).to have_link("previous")
    end

    scenario "clicks previous button and goes to previous stance" do
      click_on("previous")

      expect(page).to have_content("Sanchin Dachi")
    end

  end

  feature "first button" do

    scenario "can view first button" do
      expect(page).to have_link("first")
    end

    scenario "clicks first button and goes to first stance" do
      click_on("first")

      expect(page).to have_content("Kiba Dachi")
    end

  end

  feature "last button" do

    background do
      FactoryGirl.create(:stance, japanese_name: "Zenkutzu Dachi")
    end

    scenario "can view last button" do
      expect(page).to have_link("last")
    end

    xscenario "clicks last button and goes to last stance" do
      click_on("last")
      save_and_open_page

      expect(page).to have_content("Zenkutzu Dachi")
    end

  end

end
