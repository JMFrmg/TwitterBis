require 'rails_helper'

RSpec.describe TweetsController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #send" do
    it "returns http success" do
      get :send
      expect(response).to have_http_status(:success)
    end
  end

end
