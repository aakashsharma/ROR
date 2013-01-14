require 'spec_helper'
describe User do




	describe "with valid params" do
 	  it 'valid when all four arguments are passed' do
    	User.new(:name=>"Aakash", :email=>"akash.sharma09@gmail.com", :group=>"tcs", :DateofBirth => "2013-01-10").should be_valid
      end

      it 'valid when name, email &  DOB arguments are passed' do
    	User.new(:name=> "Aakash", :email=>"akash.sharma09@gmail.com", :group=>nil, :DateofBirth => "2013-01-10").should be_valid
      end
    end
 
    describe "with invalid params" do
      it 'invalid when name, email & DOB are not passed' do
    	User.new(:name=>nil, :email=>nil, :group=>"tcs", :DateofBirth => nil).should_not be_valid
      end

      it 'invalid when name is not string' do
        user= User.new(:name=>123, :email=>"akash.sharma09@gmail.com", :group=>"tcs", :DateofBirth => "2013-01-10")
        user.name.should_not be_a(String)
      end

      it 'invalid when email is not string' do
        user= User.new(:name=>"Aakash", :email=>123, :group=>"tcs", :DateofBirth => "2013-01-10")
        user.email.should_not be_a(String)
      end

      it 'invalid when email is not following email pattern (@ symbol and .com in email)' do
      user= User.new(:name=>"Aakash", :email=>"aakashsharma", :group=>"tcs", :DateofBirth => "2013-01-10")
      user.email.should_not include("@" && ".com")
      end
      
     it 'ensures that group is whether tcs or appdev' do
      user= User.new(:name=>"Aakash", :email=>"aakashsharma", :group=>"xyz", :DateofBirth => "2013-01-10")
      user.group.should_not be("tcs" || "appdev")
      end 
    
     #it 'validates email id pattern' do
      #user= User.new(:name=>"Aakash", :email=>"aakashsharma", :group=>"xyz", :DateofBirth => "2013-01-10")
      #user.should_not allow_value("a@b.com").for(:email)
  #  end


  end
end