Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

# posts
  get '/users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  post '/users/:user_id/posts', to: 'posts#create', as: 'posts'
  get '/users/:user_id/posts/new', to: 'posts#new', as: 'new_post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  get '/posts/:id', to: 'posts#show', as: 'post'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy' 


#comments
  get '/posts/:post_id/comments/new', to: 'comments#new', as: 'new_comment'
  post '/posts/:post_id', to: 'comments#create', as: 'comments'
  patch '/comments/:id', to: 'comments#update', as: 'comment'
  get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  delete '/comments/:id', to: 'comments#destroy', as: 'delete_comment'


  
end
