Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users do
    delete '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "home#index"

  resources :sales, only: [:index]
  resources :catalogue, only: [:index]
  resources :suppliers, only: [:index, :new, :create, :show]

  namespace :catalogue do
    resources :suppliers, only: [:index, :new, :create, :show] do
      # collection do
      #   get :select
      #   post :selected
      # end
      resources :products, only: [:index, :new, :create]
    end
  end
  resources :inventories, only: [:index]
end
