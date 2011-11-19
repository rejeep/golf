Golf::Application.routes.draw do
  namespace :admin do
    root :to => 'startpage#index'

    resources :photos
  end

  root :to => 'startpage#index'

  resources :photos
  resources :videos
  resources :blog_posts

  match '/about', :to => 'about#index'
end
