# class MilesController < ApplicationController
#     skip_before_action :authorized, only: [:index]

module Api
    module V1
        class MilesController < ApplicationController
            skip_before_action :authorized, only: [:index]
            def index 
                miles = Mile.all 
                # byebug
                render json: miles  
            end
        end
    end
end


# module Api
#     module V1
#      class IdeasController < ApplicationController
#        def index
#         @ideas = Idea.all
#         render json: @ideas
#        end
#      end
#     end
#    end