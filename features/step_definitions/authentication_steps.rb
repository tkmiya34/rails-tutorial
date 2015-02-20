Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^he submits invalid signin infomation$/ do
  click_button "Sign in"
end

Then /^he should see an error message$/ do
  have_error_message
end

Then /^the user has an account$/ do
  @user = FactoryGirl.create(:user)
end

Then /^the user submits valid signin infomation$/ do
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^he should see his profile page$/ do
  expect(page).to have_title(@user.name)
end

Then /^he should see a signout link$/ do
  expect(page).to have_link("Sign out", href: signout_path)
end
