Rails.application.routes.draw do
  get 'likes/index'
  get 'likes/create'
  get 'likes/delete'
  devise_for :users
  root to: 'pages#home'

  resources :questions do
    resources :answers
    resources :likes
  end

  resources :resources

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
