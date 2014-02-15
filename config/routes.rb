RailJumper4::Application.routes.draw do
  root to: 'pages#index'

  resources :users, only: [:new, :create]
  namespace :account do
    get '/', to: :show
    patch :update
    patch :change_password
  end


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  namespace :admin do
    get '/', to: :index
    resources :users, only: [:index, :edit, :update, :destroy]
  end
end