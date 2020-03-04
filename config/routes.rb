Rails.application.routes.draw do
  concern :session_endpoints do
    post '/login', to: 'sessions#login'
    post '/logout', to: 'sessions#logout'
    post '/authenticate', to: 'sessions#authenticate'
  end

  concern :user_endpoints do
    post '/signup', to: 'users#create'
  end
  
  concerns :session_endpoints, :user_endpoints 
end
