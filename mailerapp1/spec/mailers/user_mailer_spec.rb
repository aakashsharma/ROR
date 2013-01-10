require 'spec_helper'

describe UserMailer do
	 describe 'send_email' do

    let(:birthday_emails) { mock_model(User, :name => 'aakash')}  
 let(:users_emails) { mock_model(User, :email => 'akash.sharma09@gmail.com') }

    let(:mail) { UserMailer.send_email(birthday_emails, users_emails) }
 
    #ensure that the subject is correct
    
    it "checks mail attributes" do
    mail.subject.should eq("Happy B'day Reminder  !!!!!!!!!!!!!!!")
end
 #ensure that the receiver is correct
   
                    
                       end
end