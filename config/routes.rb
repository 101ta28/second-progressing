Rails.application.routes.draw do
  devise_for :admins, controllers: {sessions: 'admins/sessions'}
  devise_for :users#, controllers: {sessions: "users/show"}
  root 'home#index'
  get 'home/index'
  get 'users/show'
  get 'password/new'
  resources :microposts, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
