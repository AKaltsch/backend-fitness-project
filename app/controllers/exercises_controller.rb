class ExercisesController < ApplicationController

    skip_before_action :authorized, only: [:index]

    def index 
        exercises = Exercise.all
        render json: exercises
    end

end
