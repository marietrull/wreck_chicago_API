class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	ActiveRecord::Base.establish_connection(
			:adapter => 'postgresql',
			:database => 'wreck_chicago'
		)

	# Get route for all of the wrecks
	get '/' do
		
		"Hey, Howdy, Hello!"

	end

end
