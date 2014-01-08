require 'spec_helper'

describe UsersController do
  describe "#create" do
    let(:email) { 'atxjclark@gmail.com' }

    before { post :create, username: 'josh', email: email }

    it 'redirects to show' do
      expect(response).to redirect_to(user_path(User.find_by(email: email)))
    end

    it 'creates a user' do
      expect(User.find_by(email: email)).to be
    end
  end


  describe '#show' do
    let(:username) { 'josh' }

    before { get :show }

    it 'is successful' do
      expect(response).to be_ok
    end
  end
end
