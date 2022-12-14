class Api::V1::AccountController < ApplicationController

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

    def update
        @account = Account.find(params[:id])
        if @account.update(account_params)
            render json: @account, status: 200
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
        params.require(:account).permit(:name, :ownercpfnumber, :accountnumber, :securitycode, :balancevalue, :accounttype, :user_id)
    end 
end