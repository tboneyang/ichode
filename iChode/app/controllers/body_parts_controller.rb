class BodyPartsController < ApplicationController
	def new
		@body_part = BodyPart.new
	end

	#dont need to worry about new since only 5 body parts set for app
	#dont worry about create
	#dont worry about destroy
	#dont worry about edit


	#list all blocks
	def index
		@body_parts = BodyPart.all
	end

	def show 
		@body_part = BodyPart.find(params[:id])
	end

	private
		def body_part_params
			params.require(:body_part).permit(:name)
		end

end
