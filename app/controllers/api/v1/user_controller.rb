class Api::V1::UserController < ApplicationController
    wrap_parameters :user, include: [:balancevalue]

    def index 
        @user = User.all 
        render json: @user,include: ['accounts']
    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            render json: @user, status: :created 
        else
            render json: @user.errors_full_message, status: :unprocessable_entity
        end
    end 

    def destroy 
        @user = User.find(params[:id])
        @user.destroy

    end

    def show 
        @user = User.find(params[:id])
        render json: @user, include: ['accounts']
    end 

    def new 
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user, include: ['accounts'], status: 200
        else 
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    private 

    def user_params 
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :balancevalue)
    end 
end