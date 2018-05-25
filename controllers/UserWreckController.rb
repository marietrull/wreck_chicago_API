class UserWreckController < ApplicationController

	before do

  		if !session[:logged_in]
  			halt 200, {
  				success:false,
  				message:"Access Denied: Please Login.",
  			}.to_json
  		end
  	
  end	

  # Get route to get all of the user_wrecks by userid
	get '/' do

    #Find the user
      user = User.find_by :username => session[:username]
    #Find all user_wrecks with a matching id
      userWrecks = UserWreck.where(user_id: user.id)
    #return json
      userWrecks.to_json

	end

  # Post route to add a wreck to the DB

  post '/' do

    user = User.find_by :username => session[:username]
    newUserWreck = UserWreck.create user_id: user.id, wreck_id: @payload[:wreck_id] 
    {
      success: true,
      newUserWreck: newUserWreck,
      message: "Added new wreck to User's list."
    }.to_json

  end

end
