class WreckController < ApplicationController

	# Get route for all of the wrecks
	get '/' do
		
		@wrecks = Wreck.all
		@wrecks.to_json

	end

end



		