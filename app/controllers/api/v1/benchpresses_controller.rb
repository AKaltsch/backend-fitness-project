
module Api
    module V1
        class BenchpressesController < ApplicationController
            skip_before_action :authorized, only: [:index, :create]
            def index 
                benches = Benchpress.all 
                render json: benches 
            end

            def create 
                bench = Benchpress.create!(bench_params) 
                render json: bench, status: :created
            end

            private 

            def bench_params 
                params.permit(:weight, :user_id)
            end
        end
    end
end


