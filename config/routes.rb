Rails.application.routes.draw do
  devise_for :admins, controllers: {sessions: 'admins/sessions'}
  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'users/show'
  get 'password/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
