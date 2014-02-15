RailJumper4::Application.routes.draw do
  root to: 'pages#index'

  resources :users, except: [:show]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  namespace :admin do
    resources :user, only: [:index, :edit, :update, :destroy]
  end
end