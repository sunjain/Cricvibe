require 'digest'

class User < ActiveRecord::Base
	attr_reader :password
	attr_accessor :password_confirmation
	
	validates :userid, :presence => true , :uniqueness => true, :length => {:maximum => 10 }
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  :presence => true, :length => {:maximum => 100 }
  validates :email, :presence => true, :format   => { :with => email_regex }
	validates :password, :presence, :confirmation => true

	validate :password_must_be_present

	def User.authenticate(userid, password)
		if user = find_by_userid(userid)
			if user.hashed_password == encrypt_password(password, user.salt)
				user
			end
		end
	end
	
	
	def User.encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end
	
	# 'password' is a virtual attribute
	def password=(password)
		@password = password
		if password.present?
			generate_salt
			self.hashed_password = self.class.encrypt_password(password, salt)
		end
	end
	
	
	private

	def password_must_be_present
		errors.add(:password, "Missing password") unless hashed_password.present?
	end
	
	def generate_salt
		self.salt = self.object_id.to_s + rand.to_s
	end
end
