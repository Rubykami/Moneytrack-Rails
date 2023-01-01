Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    
  namespace :api do 
    mount_devise_token_auth_for 'User', at: 'auth'
    namespace :v1 do 
      resources :user
      resources :account
    end
  end

end
