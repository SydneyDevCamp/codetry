Codetry::Application.routes.draw do
  
  get "contact/index"

  get "contributors/index"

  get "usage_policy/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users do
    resources :poems
  end
end