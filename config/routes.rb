Rails.application.routes.draw do
  resources :groups, only: [:index, :new, :create] do
    resources :entities, only: [:index, :new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'groups#index'
end
