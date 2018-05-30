# wreck_chicago_API

## API for wreck_chicago build with Sintra, written in Ruby

## UserController routes
- post '/register' -> creates a new user. Will first check to make sure that the username doesn't already exist. If the username is open, it will create a new user and start a session. If it doesn't, will tell the user that the username is already taken.
- post '/login' -> takes user input and runs it against the user database. If the user and password match a user in the database, the session becomes active and the user is logged in. If not, a message is passed back to the user telling them that they've entered incorrect information. 
- post '/logout' -> destroys the current session/logs the user out. 

## WreckController routes
- before do -> checks to make sure the session is running. If not, tells the user to login. 
- get '/' -> gets all of the wrecks in the database
- post '/' -> creates a new wreck using information from the user. 
- delete '/:id' -> locates a wreck by id and destroys
- put '/:id' -> locates a wreck by id, takes user input, and updates the wreck accordingly
- get '/:id' -> locates a wreck by id, will be used to render a show page

## UserWreckController routes
- before do -> checks to make sure the session is running. If not, tells the user to login.
- '/' get -> gets all of the wreck id's that the current user has "favorited" or "stored"
- '/' post -> adds a wreck using it's id to the current user's list of wrecks
- '/:id' delete -> removes a wreck from the current user's list of wrecks
