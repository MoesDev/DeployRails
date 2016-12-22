require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new:get" do
    it "returns http success" do
      get :new:get
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create_user:post" do
    it "returns http success" do
      get :create_user:post
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show:get" do
    it "returns http success" do
      get :show:get
      expect(response).to have_http_status(:success)
    end
  end

end
