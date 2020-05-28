Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  resources :user_book_reviews
  resources :books
  resources :authors
  resources :genres
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
