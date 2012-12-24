class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
        def send_email(birthday_emails)
  		#@user = user
  		  @birthday  =  birthday_emails


        mail(:from => "organizers@birthdaywishes.com",
     		 :to => User.pluck(:email),
             :subject => "Happy B'day Reminder")


        end
end
