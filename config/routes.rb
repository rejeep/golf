Golf::Application.routes.draw do
  get "blog_posts/index"

  get "blog_posts/show"

  root :to => 'startpage#index'

  resources :photos
  resources :videos
  resources :blog_posts

  match '/about', :to => 'about#index'
end
