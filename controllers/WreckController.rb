class WreckController < ApplicationController

	before do

  		if !session[:logged_in]
  			halt 200, {
  				success:false,
  				message:"Access Denied: Please Login.",
  			}.to_json
  		end
  	end	

	# Get route for all of the wrecks
	get '/' do
		
		@wrecks = Wreck.all
		@wrecks.to_json

	end

end



		