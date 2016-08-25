Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users do 
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  resources :users do 
    resources :comments
  end
  
end
