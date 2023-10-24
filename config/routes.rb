Rails.application.routes.draw do
  
  devise_for :users
  root 'splashes#index'

  resources :categories, only: [:index, :new, :show ]
end