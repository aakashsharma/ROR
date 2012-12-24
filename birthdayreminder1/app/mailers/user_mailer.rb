class UserMailer < ActionMailer::Base
  default from: "from@example.com"
#def send_email(user,all_frnds)
def send_email(message)
  		#@user = user
  		#@all_frnds = all_frnds
  		@message = message
    	mail(:from => "organizers@jashn-2012.com",
    		 :to => message.email,
        	 :subject => "Budday Reminder")
  	#recipients  message.email
   #from        "webmaster@example.com"
  	end



end
