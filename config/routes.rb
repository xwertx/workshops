Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  devise_for :users
  get 'users/show'
  root 'categories#index'
end
