module Api
    module V1

        class DistancesController < ApplicationController
            skip_before_action :authorized, only: [:index, :create]
            def index 
                distances = Distance.all 
                render json: distances 
            end

            def create 
                dist = Distance.create!(distance_params)
                render json: dist, status: :created 
            end

            private 

            def distance_params
                params.permit(:distance, :user_id)
            end

        end
    end

end

