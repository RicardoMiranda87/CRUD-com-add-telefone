Rails.application.routes.draw do
  resources :contatos
  root 'users#index'
  resources :users
end
