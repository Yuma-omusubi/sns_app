Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/' , to: 'posts#index',as: 'index_post'
  
  get 'posts/new' , to: 'posts#new' , as: 'new_post'
  
  post 'posts/new',to: 'posts#create' , as: 'create_post'
  
  get 'posts/index' , to: 'posts#index'
  
  get '/topics/new', to: 'topics#new'
  
  get '/topics/edit', to: 'topics#edit'
  
  post '/topics/new' , to: 'topics#create'
  
  post '/topics/edit' , to: 'topics#update'
  
  # root "articles#index"
  
end
