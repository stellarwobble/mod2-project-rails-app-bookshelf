Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'
  get '/profile' => 'users#profile'
  post '/profile' => 'users#profile'
  resources :user_book_reviews, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
