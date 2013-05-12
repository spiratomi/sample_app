require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  let(:h1_test) {"should have the h1"}
  let(:title_test) {"should have the title"}

  describe "Home page", :type => :feature do |title_test, h1_test|
    it "#{h1_test} 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "#{title_test} 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title "#{base_title} | Home"
    end
  end

  describe "Help page", :type => :feature do |title_test, h1_test|
    it "#{h1_test} 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "#{title_test} 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title "#{base_title} | Help"
    end
  end

  describe "About page", :type => :feature do |title_test, h1_test|
    it "#{h1_test} 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "#{title_test} 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title "#{base_title} | About Us"
    end
  end

  describe "Contact page", :type => :feature do |title_test, h1_test|
    it "#{h1_test} 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    it "#{title_test} 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title "#{base_title} | Contact"
    end
  end
end
