Rails.application.routes.draw do
  root 'data#new'
  post '/', to: 'data#create'
  get 'new', to: 'data#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
