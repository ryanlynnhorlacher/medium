Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

# posts
  get '/users/:user_id', to: 'posts#index', as: 'user_posts'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  put '/posts/:id', to: 'posts#update'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/users/:user_id/posts/new', to: 'posts#new', as: 'new_post'
  post '/users/:user_id', to: 'posts#create'
  delete '/posts/:id', to: 'posts#destroy', as: 'delete_post'


#comments
  get '/posts/:post_id/comments/new', to: 'comments#new', as: 'new_comment'
  post '/posts/:post_id', to: 'comments#create', as: 'comments'
  get '/comments/:id', to: 'comments#edit', as: 'edit_comment'
  put '/comments/:id', to: 'comments#update'
  delete '/comments/:id', to: 'comments#destroy', as: 'delete_comment'


  
end
