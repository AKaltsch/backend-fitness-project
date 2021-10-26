module Api
    module V1 
        class SquatsController < ApplicationController
            skip_before_action :authorized, only: [:index]
            def index 
                squats = Squat.all 
                render json: squats 
            end
        end
    end

end
