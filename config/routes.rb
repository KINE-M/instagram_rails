Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos do
    resources :comments
    resource :like
  end

  resources :users do
    resource :follow
    resources :followers
    resources :followings
    resources :likes
  end
end
