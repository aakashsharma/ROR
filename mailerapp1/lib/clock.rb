require 'clockwork'
module Clockwork
  puts "testing clockwork!"
  every(55.seconds, 'Send Messages') {
    'rake scheduler:birthday_users'
    }
end
