class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
    def send_email(birthday_emails)
  		#@user = user
  		  @birthday  =  birthday_emails
  		  tcsids = []
          
			User.all.each do |user|
                if user.group == 'tcs'
                     tcsids << user.email 
                end
                          end

        attachments.inline['happybirthday.png'] = File.read('app/assets/images/happybirthday.png')
        mail(:from => "organizers@birthdaywishes.com",
     		 :to => ( if birthday_emails.length > 0
                       tcsids.join(",")
     		          end
     		        ),  
     		 :subject => "Happy B'day Reminder")
    end
        
    def send_emailappdev(birthday1_emails)
          @birthday1 = birthday1_emails
          
          appdevids = []
			User.all.each do |user|
                if  user.group == 'appdev'
                	appdevids << user.email
                end
                          end

        attachments.inline['happybirthday.png'] = File.read('app/assets/images/happybirthday.png')
        mail(:from => "organizers@birthdaywishes.com",
     		 :to => ( if birthday1_emails.length > 0
     		           appdevids.join(",")
     		          end
     		        ),  
     		 :subject => "Happy B'day Reminder")


    end   
end
