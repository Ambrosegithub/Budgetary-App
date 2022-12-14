# frozen_string_literal: true

# Rails.application.routes.draw do
#   devise_for :users
#   devise_scope :user do
#     get '/users/sign_out' => 'devise/sessions#destroy'
#   end
#  # authenticated :user do
#     #root 'splash#index', as: :authenticated_root
#  # end

#   #unauthenticated do
#     root 'splash#index'
#  # end
#   resources :expenses
#   resources :groups
#   resources :users
#   resources :splash
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # authenticated :user do
  # root 'splash#index', as: :authenticated_root
  # end

  # unauthenticated do
  # root to: 'splash#index'
  # end
  # namespace :user do
  # root :to => "splash#index"
  # end

  resources :groups do
    resources :expenses
  end
  resources :users
  resources :splash
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'splash#index'
end
