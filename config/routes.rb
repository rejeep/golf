Golf::Application.routes.draw do
  devise_for :users

  namespace :admin do
    root :to => 'startpage#index'

    resources :photos
    resources :events
    resources :videos
    resources :blog_posts
    resources :slider_photos do
      member do
        get :select_dimensions
        put :crop
      end
    end
  end

  root :to => 'startpage#index'

  resources :users
  resources :events
  resources :photos
  resources :videos
  resources :blog_posts

  match '/about', :to => 'about#index'
end
