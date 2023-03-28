Rails.application.routes.draw do
  get 'splash/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash#index"
  resources :groups, path: 'categories', only: [:index, :show, :new, :create] do
    resources :payments, only: [:index, :new, :create]
  end
end
