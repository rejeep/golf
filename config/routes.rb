Golf::Application.routes.draw do
  root :to => 'startpage#index'
  
  devise_for :users

  resources :tags
  resources :users
  resources :photos
  resources :videos
  resources :blog_posts

  match '/about', :to => 'about#index'
end
