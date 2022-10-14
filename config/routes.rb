Rails.application.routes.draw do
  get 'users/index'
  # devise_for :users
  resource :devise
  devise_for :users, controllers: { registrations: 'registrations' }
  resource :documents, only: [:new, :create, :destroy]
  root 'dashboard#politicasdegestion'
  get 'index', to: 'dashboard#index'
end
