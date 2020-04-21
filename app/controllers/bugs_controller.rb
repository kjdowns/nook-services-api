class BugsController < ApplicationController

    def update
        binding.pry
        bug = Bug.find(params[:id])
    end

end
