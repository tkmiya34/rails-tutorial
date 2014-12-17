require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'Home page' do
    let(:page_url) { '/static_pages/home' }

    it "should have the content 'Sample App'" do
      visit page_url
      expect(page).to have_content('Sample App')
    end

    it 'should have the right title' do
      visit page_url
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe 'Help page' do
    let(:page_url) { '/static_pages/help' }

    it "should have the content 'Help'" do
      visit page_url
      expect(page).to have_content('Help')
    end

    it 'should have the right title' do
      visit page_url
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe 'Abount page' do
    let(:page_url) { '/static_pages/about' }

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it 'should have the right title' do
      visit page_url
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe 'Contact page' do
    let(:page_url) { '/static_pages/contact' }

    it "should have the content 'Contact'" do
      visit page_url
      expect(page).to have_content('Contact')
    end

    it 'should have the right title' do
      visit page_url
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
