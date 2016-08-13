Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  get  '/users/:id/edit'    =>    'users#edit', as: 'edit_user'

  get  '/prototypes/index'  =>    'prototypes#index'
  get  '/prototypes/new'    =>    'prototypes#new'
  get  '/prototypes/show'   =>    'prototypes#show'
end
