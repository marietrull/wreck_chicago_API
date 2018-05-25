require 'sinatra/base'
require 'sinatra/activerecord'

# Models

require './models/WreckModel'
require './models/UserModel'
require './models/UserWreckModel'

# Controllers
require './controllers/ApplicationController'
require './controllers/WreckController'
require './controllers/UserController'
require './controllers/UserWreckController'

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

map('/userwrecks'){
	run UserWreckController
}