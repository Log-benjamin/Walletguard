Rails.application.routes.draw do
  
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  root 'splashes#index'

  resources :categories, only: [:index, :new, :show, :create]
  resources :activities, only: [:new, :show, :create]
end