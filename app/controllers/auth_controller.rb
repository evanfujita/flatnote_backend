class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            payload = { user_id: user.id }
            hmac_secret = 'mysecret'

            token = JWT.encode(payload, hmac_secret, 'HS256')

            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end

    def show
        # token = request.headers[:Authorization].split(' ')[1]
        # decoded_token = JWT.decode(token, 'mysecret', true, {algorithm: 'HS256'})
        # user_id = decoded_token[0]['user_id']

        # user = User.find(user_id)
        
        # if user
        #     render json: user
        # else
        #     render json: { error: 'Invalid Token'}
        # end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end
 
end