require 'rubygems'
require 'rake'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

# Send the mail in every 10 mins
 
scheduler.every '10m' do
	
	system 'bundle exec rake notify:birthday_users'
	 
	# UserMailer.send_email().deliver
end 
