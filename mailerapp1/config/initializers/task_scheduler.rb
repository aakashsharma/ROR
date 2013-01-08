require 'rubygems'
require 'rake'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

# Send the digest every day at noon
 
scheduler.every '5m' do
	
	system 'bundle exec rake notify:birthday_users'
	 
	# UserMailer.send_email().deliver
end 
