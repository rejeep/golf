Golf::Application.routes.draw do
  root :to => 'startpage#index'
  
  resources :photos
  resources :videos
end
