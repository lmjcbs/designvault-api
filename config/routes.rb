Rails.application.routes.draw do
  concern :user_endpoints do
    post 'users/register', to: 'users#register'
    post 'users/login', to: 'users#login'
  end

  namespace :api do
    namespace :v1 do
      concerns :user_endpoints
    end
  end
end
