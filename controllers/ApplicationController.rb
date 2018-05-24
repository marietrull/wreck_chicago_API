class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	get '/' do
		
		"Hey Hi Howdy Hello!"

	end

end
