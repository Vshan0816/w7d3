require 'rails_helper'

RSpec.describe User, type: :model do
  let(:incomplete_user){User.new(username:"", password:"password")}

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:session_token) }
  it { should validate_presence_of(:password_digest) }
end
