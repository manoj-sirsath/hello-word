require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe UsersController do
   render_views # if you have RABL views

     before do
       @user_attributes = { :email=> "test@example.com", :password=> "mypass" }
     end

    describe "POST to create" do

        it "should change the number of users" do
            expect{
                  post :create, user: @user_attributes
            }.to change(User, :count).by(1)
        end

        it "should be successful" do
           post :create, user: @user_attributes
           #response.should be_success
           expect(response).to redirect_to(User.last)
        end

        it "should set @user" do
           post :create, user: @user_attributes
           #assigns(:user).email.should == @user_attributes[:email]
           expect(assigns(:user).email).to eq(@user_attributes[:email])
        end

        it "should return created user in json" do # depend on what you return in action
           post :create, user: @user_attributes
           body = JSON.parse(response.body)
           #body["email"].should == @user_attributes[:email]
           expect(body["email"]).to eq(@user_attributes[:email])
       end
    end
  end
end
