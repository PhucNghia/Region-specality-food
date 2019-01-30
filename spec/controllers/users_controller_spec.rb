require "rails_helper"

RSpec.describe UsersController, type: :controller do
  let(:user) {FactoryBot.create :user}
  before(:each) do
    sign_in user
  end

  describe "GET #edit" do
    it "render template edit" do
      get :edit, id: user.id
      expect(response).to render_template :edit
    end
  end

  describe "GET# index" do
    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end

    it "should have right list of user" do
      get :index, params: {format: :html}
      expect(assigns :users).to eq([user])
    end
  end

  describe "PUT #update" do
    context "with valid attributes" do
      it "update user" do
        put :update, id: user.id, user: user.attributes
        expect(assigns :user).to eq(user)
      end
    end
  end

  describe "PATCH #update" do
    it "with valid attributes" do
      patch :update, id: user.id, user: user.attributes
      expect(assigns :user).to eq(user)
    end
  end

  describe "POST #destroy" do
    it "delete the user" do
      expect{
        delete :destroy, params:{id: user.id}, format: :json
      }.to change(User, :count).by -1
    end
  end
end
