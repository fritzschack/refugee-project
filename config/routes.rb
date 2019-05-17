Rails.application.routes.draw do
  get 'likes/index'
  get 'likes/create'
  get 'likes/delete'
  devise_for :users
  root to: 'pages#home'

  resources :questions do
    resources :answers, only: [:create]
    resources :likes, only: [:create, :destroy]
  end

  resources :resources, only: [:index]

  resources :matches, only: [:index, :show, :destroy]

  get '/configuration', to: 'pages#match', as: :start_matches

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
