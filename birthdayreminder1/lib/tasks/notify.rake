namespace :notify do
  desc "This is to notify people about Birthday"
  task(:all => :environment) do
   message =  Message.first
   #all_users = date.today == All users having bdfay today
   UserMailer.send_email(message).deliver
  end
end