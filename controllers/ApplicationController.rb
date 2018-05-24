class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	ActiveRecord::Base.establish_connection(
			:adapter => 'postgresql',
			:database => 'wreck_chicago'
		)

	get '/' do
		
		"Hey Hi Howdy Hello!"

	end

end
