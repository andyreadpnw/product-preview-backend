class UserGroupsController < ApplicationController

    def create
        user_group = UserGroup.new(user_group_params)
        if user_group.save
            render json: user_group
        else
            render json: { error: 'user_group exists, no save!' }
        end
    end 

    private

    def user_group_params
        params.require(:user_group).permit(:usergroup_name, :access_level)
    end

end
