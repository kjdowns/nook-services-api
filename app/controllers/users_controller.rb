class UsersController < ApplicationController

    def show
        user = User.find_by(username: params[:id])
        render json: {username: user.username, bugs: user.bugs, fish: user.fish}
    end

    def create
        user = User.create(username: params[:username], password: params[:password])
        params[:bugs].each do |bug|
            user.bugs.create(name: bug[:name], location: bug[:location], time: bug[:time], months_north: bug[:northMonths].join(", "), months_south: bug[:southMonths].join(", "), url: bug[:url])
        end
        params[:fish].each do |fish|
            user.fish.create(name: fish[:name], location: fish[:location], time: fish[:time], months_north: fish[:northMonths].join(", "), months_south: fish[:southMonths].join(", "), url: fish[:url])
        end
        render json: {username: user.username, bugs: user.bugs, fish: user.fish}
    end

end
