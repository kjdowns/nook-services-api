class FishController < ApplicationController

    def update
        fish = Fish.find(params[:id])
        user = User.find(fish.user_id)
        Fish.update(params[:id], checked: params[:checked])
        render json: {username: user.username, bugs: user.bugs.order(:id), fish: user.fish.order(:id)}
    end

end
