# class MilesController < ApplicationController
#     skip_before_action :authorized, only: [:index]

module Api
    module V1
        class MilesController < ApplicationController
            skip_before_action :authorized, only: [:index, :create]
            def index 
                miles = Mile.all 
                # byebug
                render json: miles  
            end

            def create 
                mile = Mile.create!(mile_params)
                render json: mile, status: :created
            end 
            private 

            def mile_params 
                params.permit(:time, :user_id)
            end
        end
    end
end


