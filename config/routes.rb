Golf::Application.routes.draw do
  root :to => 'startpage#index'

  devise_for :users

  resources :tags
  resources :users
  resources :photos
  resources :videos
  resources :blog_posts
  namespace :acts_as_taggable_on do
    resources :tags
  end

  match '/about', :to => 'about#index'
end
