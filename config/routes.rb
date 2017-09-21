Rails.application.routes.draw do
  root to: 'home#index'

  get '/users', to: 'users#index'
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/profile', to: 'users#show'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: "sessions#create"
  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/cities/new', to: 'cities#new'
  post '/cities', to: 'cities#create'
  get '/cities/:id', to: 'cities#show', as: 'city'
  get '/cities/:id/edit', to: 'cities#edit'
  patch '/cities/:id', to: 'cities#update'
  
  get '/cities/:city_id/posts/new', to: 'posts#new', as: 'new_post'
  post '/cities/:city_id/posts', to: 'posts#create', as: 'post_create'
  get '/cities/:city_id/posts/:post_id', to: 'posts#show', as: 'post'
  get '/cities/:city_id/posts/:post_id/edit', to: 'posts#edit', as: 'edit_post'
end
