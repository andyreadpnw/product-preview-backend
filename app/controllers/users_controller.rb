class UsersController < ApplicationController

    before_action :authorized
    skip_before_action :authorized, only: [:create, :new]
 
    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end
   
    def create
      puts params[:password]
      @user = User.create(:username => params[:username], :password => params[:password], :user_group_id => params[:user_group_id])
      @user.save
      if @user.valid?
        @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def show_current_user
        user = current_user
        render json: {user_id: user}
    end
   
    private

    def user_params
        params.require(:user).permit(:username, :password, :user_group_id)
    end

end