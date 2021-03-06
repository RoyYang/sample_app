require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"YunnuY Soft"}
  let(:base_path) {"/static_pages"}

  describe "Home page" do
    it "should have the content 'Sample App'" do 
      visit "#{base_path}/home"
      page.should have_selector('h1', :text=> 'Sample App')
    end
 
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "#{base_title} | Home")
    end
  end


  describe "Help page" do
    it "should have the content 'Help'" do 
      visit '/static_pages/help'
      page.should have_selector('h1', :text=> 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "#{base_title} | Help")
    end
  end


  describe "About page" do
    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      page.should have_selector('h1', :text=> 'About Us')
    end
  
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end


  describe "Contact page" do
    it "should have the content 'Contact'" do 
      visit '/static_pages/contact'
      page.should have_selector('h1', :text=> 'Contact')
    end
  
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contact")
    end
  end
end
#  describe "GET /static_pages" do

#    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
end
