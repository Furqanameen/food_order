Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :employee
  root 'employee#index' ,to: '/index'
  # get 'employee#index'
  # get 'employee/new'
  # get 'employee#show'
  # root to: 'home#index'
  # devise_scope :user do
  # get 'sign_in', to: 'devise/sessions#new'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
