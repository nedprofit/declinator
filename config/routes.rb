Rails.application.routes.draw do
  root 'data#new'
  post '/', to: 'data#create'
  get 'new', to: 'data#new'
end
