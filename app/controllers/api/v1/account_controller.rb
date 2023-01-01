class Api::V1::AccountController < ApplicationController
    before_action :authenticate_api_user!

    def index 
        @accounts = Account.all 
        render json: @accounts
    end 

    def create 
        @account = Account.new(account_params)
        if @account.save 
            render json: @account, status: :created
        else
            render json: @account.errors, status: :unprocessable_entity
        end
    end 

    def destroy 
        @account = Account.find(params[:id])
        @account.destroy

    end

    def show 
        @account = Account.find(params[:id])
        render json: @account
    end 

    def new 
        
        
    end

    private 

    def account_params 
        params.require(:account).permit(:name, :ownername, :ownercpfnumber, :accountnumber, :securitycode, :balancevalue, :accounttype, :user_id)
    end 
end