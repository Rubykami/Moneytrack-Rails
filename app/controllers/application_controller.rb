class ApplicationController < ActionController::API



        include DeviseTokenAuth::Concerns::SetUserByToken

        
        before_action :configure_permitted_parameters, if: :devise_controller?

        wrap_parameters format: [:json]


        protected 

        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :uuid, :email, :password, :password_confirmation, :balancevalue])
        end
end
