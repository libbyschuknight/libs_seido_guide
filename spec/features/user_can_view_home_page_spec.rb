require "rails_helper"

feature "User can view the home page" do
  background do
    visit '/'
  end

  scenario "it shows the heading 'Libs Seido Guide' " do
    expect(page).to have_css("h1", "Libs Seido Guide")
  end

  scenario "it shows intro text" do
    expect(page).to have_content("This guide is to help me learn all I need to for my next few gradings.")
  end

  scenario "it should have a 'Stances' button" do
    expect(page).to have_link("Stances")
  end

  scenario "user can click 'Stances' button and is redirected to stances index page" do
    click_link("Stances")

    expect(page.current_path).to eq("/stances")
  end
end
