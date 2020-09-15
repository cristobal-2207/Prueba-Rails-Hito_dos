Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  #devise_for :admin_users, ActiveAdmin::Devise.config
  get 'pages/index'
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    post 'likes', to: 'tweets#likes'
    post 'retweet', to: 'tweets#retweet'
  end

  resources :retweets
  resources :likes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end