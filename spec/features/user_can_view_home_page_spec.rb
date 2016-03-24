require "rails_helper"

feature "User can view the home page" do
  scenario "it shows the heading 'Libs Seido Guide' " do
    visit '/'

    expect(page).to have_css("h1", :text => "Libs Seido Guide")

  end


end



#
# describe "About page" do
#
#   it "should have the h1 'About Us'" do
#     visit '/static_pages/about'
#   page.should have_selector('h1', :text => 'About Us')
# end
# it "should have the title 'About Us'" do
#   visit '/static_pages/about'
#   page.should have_selector('title',
#                 :text => "Ruby on Rails Tutorial Sample App | About Us")
#   end
# end
