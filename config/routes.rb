Rails.application.routes.draw do
  devise_for :users
  
  resources :posts do
    resources :comments, only: [:update, :destroy, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
