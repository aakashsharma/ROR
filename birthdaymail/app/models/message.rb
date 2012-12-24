class Message < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

def self.due_to_send
    t = Time.now
    Message.where("send_at < :now", :now => t)
  end

  def self.post_mail
    Message.due_to_send.each do |message|
	  MessageMailer.future_message(message).deliver
	  message.destroy
	end
  end
  
end
