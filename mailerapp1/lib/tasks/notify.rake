namespace :notify do
  desc "This is to notify people about Birthday"
  task(:birthday_users => :environment) do
    # if Time.now.hour % 1 == 0
    birthday = []
    birthday1 = []
    
    User.all.each do |user|
     



      
      if Date.today.month == user.DateofBirth.month && Date.today.day == user.DateofBirth.day && user.group == 'tcs'
	#user.dob (logic to match if today is user' budaay)
      birthday << user.name

         if birthday.length > 0
             UserMailer.send_email(birthday.join(' & ')).deliver!
         end

      elsif Date.today.month == user.DateofBirth.month && Date.today.day == user.DateofBirth.day && user.group == 'appdev'
      birthday1 << user.name
      
         if birthday1.length > 0
             UserMailer.send_emailappdev(birthday1.join(' & ')).deliver!       
         end
                  
      end
    #if loop end
                  end #do loop end          
 #     if birthday.length > 0
  #  UserMailer.send_email(birthday.join(' & ')).deliver!
 #     end
                                         end

                  end