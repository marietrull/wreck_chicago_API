class User < ActiveRecord::Base

	has_secure_password

	has_many :user_wrecks
	has_many :users, :through => :user_wrecks

end	