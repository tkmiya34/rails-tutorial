require 'rails_helper'

RSpec.describe 'Authentications', type: :request do
  subject { page }

  describe 'signin page' do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end

  describe 'signin' do
    before { visit signin_path }

    let(:signin) { 'Sign in' }

    describe 'with invalid information' do
      before { click_button signin }

      it { should have_title('Sign in') }
      it { should have_error_message('Invalid') }

      describe 'after visiting another page' do
        before { click_link 'Home' }

        it { should_not have_message }
      end
    end

    describe 'with valid information' do
      let(:user) { FactoryGirl.create(:user) }

      before { valid_signin(user) }

      it { should have_title(user.name) }
      it { be_signin_header }

      describe 'folllowd by signout' do
        before { click_link 'Sign out' }
        it { should have_link('Sign in') }
      end
    end
  end
end
