Golf::Application.routes.draw do
  root :to => 'startpage#index'

  resources :photos
  resources :videos
  resources :blog_posts

  match '/about', :to => 'about#index'
end
