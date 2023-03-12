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
  resources :catalogues, only: [:index]
  resources :inventories, only: [:index]
end
