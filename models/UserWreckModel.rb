class UserWreck < ActiveRecord::Base

	belongs_to :wreck
	belongs_to :user

end