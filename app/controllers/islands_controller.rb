class IslandsController < ApplicationController

    def index
        render json: Island.all, except: [:created_at, :updated_at]
    end

end
