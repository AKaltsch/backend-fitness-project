
module Api
    module V1
        class BenchpressesController < ApplicationController
            skip_before_action :authorized, only: [:index]
            def index 
                benches = Benchpress.all 
                render json: benches 
            end
        end
    end

end
