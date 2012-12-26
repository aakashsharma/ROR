namespace :notify do
  desc "This is to notify people about Birthday"
  task(:birthday_users => :environment) do
    if Time.now.hour % 1 == 0
    birthday = []
    User.all.each do |user|

      if Date.today.month == user.DateofBirth.month && Date.today.day == user.DateofBirth.day
	#user.dob (logic to match if today is user' budaay)
      birthday << user.name
   
      end #if loop end
                  end #do loop end

    UserMailer.send_email(birthday.join(' & ')).deliver!
                                         end
end
                    end