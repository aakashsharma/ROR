class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
        def send_email(birthday_emails)
  		#@user = user
  		  @birthday  =  birthday_emails
#r= []
#User.all.each do |user|
     		 	       
 #   r << user.email
  #  		 	 end 
   # 		 	 end
     		 	 


        # @tcsids    =  tcsids_emails   

  attachments.inline['rails.png'] = File.read('app/assets/images/rails.png')

        mail(:from => "organizers@birthdaywishes.com",
     		 :to => User.pluck(:email),

     		 :subject => "Happy B'day Reminder")
           # :content_type => "image/jpeg",
      #:body => File.read("'app/assets/images/happybirthday.png'"))
                               
             


             
        end
end
