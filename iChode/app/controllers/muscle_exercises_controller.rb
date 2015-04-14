class Muscle_Exercises < ApplicationController
def create
	@muscle = Muscle.find(params[:muscle_id])
	@exercise = Exercise.find(params[:exercise_id])
	@muscle_exercise = @muscle_exercise.create(muscle_params,exercise_params)
end

def show 
end

def index
end
end
