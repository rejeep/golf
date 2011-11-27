Golf::Application.routes.draw do
  devise_for :users

  namespace :admin do
    root :to => 'startpage#index'

    resources :users do
      member do
        put :promote
        put :degrade
      end
    end
    resources :photos
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

  resources :tags
  resources :users
  resources :photos
  resources :videos
  resources :blog_posts

  match '/about', :to => 'about#index'
end
