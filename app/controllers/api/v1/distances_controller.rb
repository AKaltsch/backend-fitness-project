module Api
    module V1

        class DistancesController < ApplicationController
            skip_before_action :authorized, only: [:index]
            def index 
                distances = Distance.all 
                render json: distances 
            end
        end
    end

end
