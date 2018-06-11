class WreckController < ApplicationController

	before do

  		if !session[:logged_in]
  			halt 200, {
  				success:false,
  				message:"Access Denied: Please Login.",
  			}.to_json
  		end
  	end	

	# Get route for all of the wrecks
	get '/' do
		
		allWrecks = Wreck.all.order(:name)

		{
			success: true,
			message: "Found #{allWrecks.length} wreck(s).",
			allWrecks: allWrecks
		}.to_json

	end

	# Post route to add a wreck to the DB

	post '/' do

		newWreck = Wreck.create name:@payload[:name], latitude:@payload[:latitude], longitude:@payload[:longitude], depth:@payload[:depth], description:@payload[:description], image:@payload[:image]

		{
			success: true,
			added_wreck: newWreck,
			message: "Added wreck to the database."
		}.to_json
	end	

	# Delete route to remove a wreck from the DB

	delete '/:id' do

		delete_wreck = Wreck.find params[:id]

		 	delete_wreck.destroy

			{
				success: true,
				message: "Delete #{delete_wreck.name} successful."
			}.to_json

	end	

	# Edit route for a wreck by id
	put '/:id' do

		editWreck = Wreck.find params[:id]
		editWreck.name = @payload[:name]
		editWreck.latitude = @payload[:latitude]
		editWreck.longitude = @payload[:longitude]
		editWreck.depth = @payload[:depth]
		editWreck.description = @payload[:description]
		editWreck.image = @payload[:image]
		editWreck.save

		{
			success: true,
			edited_wreck: editWreck,
			message: "Updated Wreck."
		}.to_json
	end	

	# Show route for wreck by id

	get '/:id' do

		showWreck = Wreck.find params[:id]
		{
			success: true,
			show_wreck: showWreck,
			message: "Found #{showWreck.name}"
		}.to_json

	end

end



		