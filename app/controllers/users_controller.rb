class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: {username: user.username, bugs: user.bugs, fish: user.fish}
    end

    def create
        User.create(username: params[:username], password: params[:password])
    end

end
