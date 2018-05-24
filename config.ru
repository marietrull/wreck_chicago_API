require 'sinatra/base'
require 'sinatra/activerecord'

# Models

require './models/WreckModel'
require './models/UserModel'

# Controllers
require './controllers/ApplicationController'
require './controllers/WreckController'
require './controllers/UserController'

#routes
map('/'){
	run ApplicationController
}

map('/wrecks'){
	run WreckController
}

map('/user'){
	run UserController
}