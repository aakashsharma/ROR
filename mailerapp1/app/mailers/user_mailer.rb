class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
    def send_email(birthday_emails, users_emails)
  		#@user = user
  		  @birthday  =  birthday_emails
  		  @email_id  =  users_emails
  		
      attachments.inline['happybirthday.png'] = File.read('app/assets/images/happybirthday.png')
        mail(:from => "organizers@birthdaywishes.com",
     		 :to => users_emails, 
     		 :subject => "Happy B'day Reminder")
    end
        

end
