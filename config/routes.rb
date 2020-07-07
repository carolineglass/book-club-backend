Rails.application.routes.draw do
  resources :user_books
  resources :user_clubs
  resources :book_clubs
  resources :clubs
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
