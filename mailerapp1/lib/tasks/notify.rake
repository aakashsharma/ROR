namespace :notify do
  desc "This is to notify people about Birthday"
  task(:birthday_users => :environment) do
    # if Time.now.hour % 1 == 0
    birthday = []
    email_id = []
    
    groups = User.all.collect(&:group).uniq # ['tcs', 'appdev']
      groups.each do |group| 
          users = User.get_group_users(group)
             email_id << users.pluck(:email)
               users.each do |user|
         
                  if Date.today.month == user.DateofBirth.month && Date.today.day == user.DateofBirth.day
                     birthday << user.name    
                       if birthday.length > 0
                          UserMailer.send_email(birthday.uniq.join(' & '), email_id).deliver!
                       end
                  end
                         end
                   birthday.clear      
                   email_id.clear      
                  end      
                

    
                                         end

                  end