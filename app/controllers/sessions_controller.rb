class SessionsController < ApplicationController
    
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {username: user.username, bugs: user.bugs.order(:id), fish: user.fish.order(:id)} 
        else
            render json: {error: "Invalid login"}  
        end 
    end
end