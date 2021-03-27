Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/photos', to: 'photos#create', as: 'photos'
  get '/stages.json', to: 'stages#index', as: 'stages'
  get '/training', to: 'stages#index', as: 'training'
  post '/users', to: 'users#create', as: 'users'
  get '/inicio', to: 'users#new', as: 'login'

  # root 'users#new'
  root to: redirect('/inicio')
end
