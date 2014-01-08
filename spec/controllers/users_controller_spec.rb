require 'spec_helper'

describe UsersController do
  describe "#create" do
    before { post :create, username: 'josh', email: 'atxjclark@gmail.com' }

    it 'is successful' do
      expect(response).to be_ok
    end

    it 'creates a user' do
      expect(User.find_by(email: 'atxjclark@gmail.com')).to be
    end
  end
end
