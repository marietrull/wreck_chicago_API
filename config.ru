require 'sinatra/base'

# Controllers
require './controllers/ApplicationController'

#routes
map('/'){
	run ApplicationController
}