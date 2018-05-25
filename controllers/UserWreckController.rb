class UserWreckController < ApplicationController

	before do

  		if !session[:logged_in]
  			halt 200, {
  				success:false,
  				message:"Access Denied: Please Login.",
  			}.to_json
  		end
  	
  end	

	get '/' do
		
		userWrecks = UserWreck.all.order(:id)
		userWrecks.to_json

	end

end
