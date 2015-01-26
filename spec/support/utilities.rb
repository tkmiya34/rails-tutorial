include ApplicationHelper

def valid_signup(user)
  fill_in 'Name',         with: user.name
  fill_in 'Email',        with: user.email
  fill_in 'Password',     with: user.password
  fill_in 'Confirmation', with: user.password_confirmation
end

def valid_signin(user)
  fill_in 'Email',    with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign in'
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-danger', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-success', text: message)
  end
end

RSpec::Matchers.define :have_message do
  match do |page|
    expect(page).to have_selector('div.alert')
  end
end

RSpec::Matchers.define :be_signin_header do
  match do |page|
    should have_link('Profile',  href: user_path(user))
    should have_link('Sign out', href: signout_path)
    should_not have_link('Sign in',  href: signin_path)
  end
end
