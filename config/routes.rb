Rails.application.routes.draw do
  post '/users/login', to: 'users#login'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  resources :user_books
  resources :user_clubs
  resources :book_clubs
  resources :clubs
  resources :books
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
