class MilesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index 
        miles = Mile.all 
        byebug
        render json: miles  
    end
end
