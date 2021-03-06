class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
  attr_accessor :login

  def self.find_for_database_authentication(warden_conditions)
	  conditions = warden_conditions.dup
	  if login = conditions.delete(:login)
	    where(conditions.to_h).where(
	    	["lower(username) = :value OR lower(email) = :value", 
	    		{ :value => login.downcase }]).first
	  elsif conditions.has_key?(:username) || conditions.has_key?(:email)
	    where(conditions.to_h).first
	  end
	end

	validates :username,
	  :presence => true,
	  :uniqueness => {
	    :case_sensitive => false
	}

	# username 			| email
	# loitd2 			| loitd@loitd.com
	# loitd@loitd.com 	| a@abc.com

end
