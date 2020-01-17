class AuthController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])
        #User#authenticate comes from BCrypt
        if @user && @user.authenticate(params[:password])
          # encode token comes from ApplicationController
          token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
          render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
      end

      def show
            user = User.find_by(id: user.id)
            if logged_in?
                render json: { id: user.id, username: user.username}
            else
                render json: {error: 'No user could be found'}, status: 400
            end

      end
     
      private
     
      def user_login_params
        # params { user: {username: 'Freddie Mercury', password: 'hi' } }
        params.require(:user).permit(:username, :password)
      end

end
