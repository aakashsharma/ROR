require 'rubygems'
require 'rake'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

# Send the digest every day at noon
 
scheduler.every ''0 10 * * 1-7'' do
	# every day at 10 Am
	
	system 'bundle exec rake notify:birthday_users'
	 
	# UserMailer.send_email().deliver
end 
