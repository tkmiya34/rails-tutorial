require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = User.new(name: '星宮いちご', email: 'i-hoshimiya@star-light.ac') }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
end
