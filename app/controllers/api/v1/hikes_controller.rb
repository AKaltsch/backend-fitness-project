module Api
    module V1
        class HikesController < ApplicationController
            skip_before_action :authorized, only: [:index, :create]
            def index 
                hikes = Hike.all 
                # byebug
                render json: hikes  
            end

            def create 
                hike = Hike.create!(hike_params)
                render json: hike, status: :created
            end 
            private 

            def hike_params 
                params.permit(:title, :description, :lat, :lng, :image_url, :user_id)
            end
        end
    end
end
