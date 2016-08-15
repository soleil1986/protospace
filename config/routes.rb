Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  get '/users/:id/edit' => 'users#edit'
  resources :users
end
