class Wreck < ActiveRecord::Base

	has_many :user_wrecks
	has_many :users, :through => :user_wrecks

end