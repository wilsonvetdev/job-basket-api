class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end

    def signin
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: 'Incorrect email or password! Try again.'}, status: 422
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: {error: 'invalid input'}, status: 422
        end
    end

    def user_params
        params.permit(:email, :password, :first_name, :last_name)
    end

end