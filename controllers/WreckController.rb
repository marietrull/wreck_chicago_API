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
		
		allWrecks = Wreck.all
		allWrecks.to_json

	end

	# Post route to add a wreck

	post '/' do

		newWreck = Wreck.create name:@payload[:name], latitude:@payload[:latitude], longitude:@payload[:longitude], depth:@payload[:depth], description:@payload[:description], image:@payload[:image]

		{
			success: true,
			added_wreck: newWreck,
			message: "Added wreck to the database."
		}.to_json
	end	

end



		