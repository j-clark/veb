require 'spec_helper'

describe UsersController do
  describe "#create" do
    let(:email) { 'atxjclark@gmail.com' }

    before { post :create, username: 'josh', email: email }

    it 'is successful' do
      expect(response).to be_ok
    end

    it 'creates a user' do
      expect(User.find_by(email: email)).to be
    end
  end
end
