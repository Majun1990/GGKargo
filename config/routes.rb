Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :shippers
  get 'about', to: 'static_pages#about'
  get 'resources', to: 'static_pages#resources'
  get 'faq', to: 'static_pages#faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
