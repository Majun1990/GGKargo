Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :shippers
  resources :inquiries
  get 'about', to: 'static_pages#about'
  get 'resources', to: 'static_pages#resources'
  get 'faq', to: 'static_pages#faq'
  get 'contact_us', to: 'static_pages#contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
