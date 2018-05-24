require 'sinatra/base'
require 'sinatra/activerecord'

# Models

require './models/WreckModel'

# Controllers
require './controllers/ApplicationController'
require './controllers/WreckController'

#routes
map('/'){
	run ApplicationController
}

map('/wrecks'){
	run WreckController
}