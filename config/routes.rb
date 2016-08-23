Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :prototypes do
    resources :comments, only: [:new, :create]
  end
  post '/like/:prototype_id' => 'likes#like', as: 'like'
  delete '/unlike/:prototype_id' => 'likes#unlike', as: 'unlike'
  root 'prototypes#index'
end
