require 'sinatra/base'
require 'sinatra/activerecord'

# Controllers
require './controllers/ApplicationController'

#routes
map('/'){
	run ApplicationController
}