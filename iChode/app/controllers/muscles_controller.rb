class MusclesController < ApplicationController
	def create 
		@body_part = BodyPart.find(params[:body_part_id])
		@muscle = @body_part.muscles.create(muscle_params)
		redirect_to block_path(@block)

	end

	def index
		@muscles = Muscle.all 
	end

	def show
		@muscle = Muscle.find(params[:id])
	end

	private
		def muscle_params
			params.require(:muscle).permit(:name)
		end


end
