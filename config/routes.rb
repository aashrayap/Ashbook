Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  resource :session, :only => [:new,:create]
  resources :posts
  resources :comments, :only=> [:create]
  resources :friendings, :only=> [:index,:create,:new]
end
