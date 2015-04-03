class ExercisesController < ApplicationController
	def new
		@exercise= Exercise.new

	end


	def index
		@exercises = Exercise.all
	end

end
