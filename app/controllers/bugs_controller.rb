class BugsController < ApplicationController

    def update
        bug = Bug.find(params[:id])
        user = User.find(bug.user_id)
        Bug.update(params[:id], checked: params[:checked])
        render json: {username: user.username, bugs: user.bugs, fish: user.fish}
    end

end
