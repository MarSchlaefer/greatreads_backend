Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      resources :users
      resources :books
      resources :follows
      resources :user_books
    end
  end

end
