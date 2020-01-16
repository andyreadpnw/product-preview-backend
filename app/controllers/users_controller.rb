class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        byebug
        if user.save
            render json: user
        else
            render json: { error: 'user exists, no save!' }
        end
    end 

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :user_group_id)
    end

end