require 'rubygems'
require 'rake'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

# Send the digest every day at noon
scheduler.every('5m') do
   UserMailer.send_email().deliver
end 