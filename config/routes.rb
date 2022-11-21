Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'splash#index', as: :unauthenticated_root
  end
  resources :expenses
  resources :groups
  resources :users
  resources :splash
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
