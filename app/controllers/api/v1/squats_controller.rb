module Api
    module V1 
        class SquatsController < ApplicationController
            skip_before_action :authorized, only: [:index, :create]
            def index 
                squats = Squat.all 
                render json: squats 
            end

            def create  
                squat = Squat.create!(squat_params)
                render json: squat, status: :created
            end

            private

            def squat_params
                params.permit(:weight, :user_id)
            end
        end
    end

end
