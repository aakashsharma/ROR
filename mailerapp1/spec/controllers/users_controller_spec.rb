require 'spec_helper'

describe UsersController do
 

  before (:each) do

    @admin = Admin.create!({

      :email => 'admin@admin.com',

      :password => 'admin123',

      :password_confirmation => 'admin123' 

    })

    sign_in @admin

  end 


	def valid_attributes
    	{ "name" => "aakash",
      	  "email" => "akash.sharma09@gmail.com",
      	  "group" => "tcs",
      	  "DateofBirth" => "2013-01-10"
    	}
    end

  	def valid_session
    	{}
  	end
  	
  	

    describe "POST create" do
    describe "with valid params" do
      
     
      it "creates a new User" do
        expect {
                 post :create, {:user => valid_attributes}
               }.to change(User, :count).by(1)
                              end

      
     
      it "assigns a newly created user as @user" do
        post :create, :user => valid_attributes
        assigns(:user).should be_a(User)
        assigns(:user).should be_persisted
      end
      

      it "redirects to the created user" do
        post :create, :user => valid_attributes 
        response.should redirect_to(User.last)
      end

                                 end
                            end 



describe "with invalid params" do
      
      it "assigns a newly created but unsaved user as @User" do
          User.any_instance.stub(:save).and_return(false)
        post :create, :user => valid_attributes
        assigns(:user).should be_a_new(User)
      end

      it "re-redirects to the user/show page" do
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stub(:save).and_return(false)
        post :create, :user => valid_attributes
        response.should render_template("new")
      end
    

  end

describe "DELETE destroy" do
    it "destroys the corresponding user" do
      user = User.create! valid_attributes
      expect {
        delete :destroy, {:id => user.to_param}#, valid_session
      }.to change(User, :count).by(-1)
    end

    it "redirects to the user list" do
      user = User.create! valid_attributes
      delete :destroy, {:id => user.to_param}#, valid_session
      response.should redirect_to users_path(@users)
    end
  end



describe "update" do
    it "update the corresponding user" do
      user = User.create! valid_attributes
      expect {
        delete :, {:id => user.to_param}#, valid_session
      }.to change(User, :count).by(-1)
    end

    it "redirects to the user list" do
      user = User.create! valid_attributes
      delete :destroy, {:id => user.to_param}#, valid_session
      response.should redirect_to users_path(@users)
    end
  end



 describe "GET index" do
    it "assigns @users" do
      user = User.create! valid_attributes
      get :index
      assigns(:users).should eq([user])
    end

    it "renders the index template" do
      get :index
      response.should render_template("index")
    end
end








end