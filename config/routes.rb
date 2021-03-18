Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :phases, only: [:show], format: false
  resources :photos, only: [:create], format: false
  resources :users, only: [:new, :create], format: false

  root 'users#new'
end
