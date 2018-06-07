require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email: "user4@gmail.com", password: "userfour4")}
  let(:user2) { User.create!(email: "user5@gmail.com", password: "userfive5")}

  describe 'GET #show' do


     context 'when a user is logged in' do

       before do
         sign_in user
       end

       it "loads correct user details" do
         get :show, params: { id: user.id }
         expect(response).to be_ok
         expect(assigns(:user)).to eq user
       end

     end

     context 'when a user is not logged in' do
       it 'redirects to homepage' do
         get :show, params: { id: user.id }
         expect(response).to redirect_to(root_path)
       end
     end
  end

end
