class ApplicationController < ActionController::API

        self.abstract_class = true
  
        # Adjust default sort order
        self.implicit_order_column = :created_at

        include DeviseTokenAuth::Concerns::SetUserByToken

        
        before_action :configure_permitted_parameters, if: :devise_controller?

        wrap_parameters format: []


        protected 

        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :uuid, :email, :password, :password_confirmation])
        end
end
