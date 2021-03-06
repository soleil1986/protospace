Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :tags, only: [:index, :show]
  post '/like/:prototype_id' => 'likes#like', as: 'like'
  delete '/unlike/:prototype_id' => 'likes#unlike', as: 'unlike'
  get '/newest' => 'newests#index'
  get '/popular' => 'populars#index'
  root 'prototypes#index'
end
