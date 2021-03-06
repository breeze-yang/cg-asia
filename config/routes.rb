Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/cg_asia', to: 'cg_asia#index'
  get '/tournament', to: 'tournament#index'
  resources :admin_images, only: [:create]
  resources :news, only: [:index, :show]
  resources :videos, only: [:index, :show]
  resources :online_pokers, only: [:index]
end
