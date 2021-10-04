class UsersController < ApplicationController

    def show
        # this will find the id by using params_id
        user = User.find_by(id: params[:id])
        # checks if user exits
        if user
            render json: user, include: :properties
        else
            render json: {message: 'invalid user id'}
        end
        # render json: user
    end
end
