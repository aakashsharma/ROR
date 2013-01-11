require 'spec_helper'

describe UserMailer do
	 describe 'send_email' do

    let(:birthday_emails) { mock_model(User, :name => 'aakash')}  
    let(:users_emails) { mock_model(User, :email => 'akash.sharma09@gmail.com') }
    let(:mail) { UserMailer.send_email(birthday_emails, users_emails) }
 
    #ensure that the subject is correct
    
        it "checks mail attributes" do
         mail.subject.should eq("Happy B'day Reminder")
        end
 

        it "should be set to be delivered to the email passed in" do
         mail.from.should eq("organizers@birthdaywishes.com")
        end

        it "validate greetings in body part" do
        mail.body.should_not include(/Dear/) 
        end


      it 'sends an message email' do
            render :template =>'app/views/user_mailer/send_email.html.erb'
      end
    

     end
end