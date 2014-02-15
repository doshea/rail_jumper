RailJumper4::Application.routes.draw do
  root to: 'pages#index'

  resources :users, except: [:show, :index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  namespace :admin do
    get '/', to: :index
    resources :users, only: [:index, :edit, :update, :destroy]
  end
end