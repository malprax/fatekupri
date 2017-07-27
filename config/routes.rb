Rails.application.routes.draw do
  devise_for :users, :controllers => {
    # :omniauth_callbacks => "users/omniauth_callbacks",
    # sessions: 'users/sessions',
    # registrations: 'users/registrations',
    # confirmations: 'users/confirmations'
  }

  root 'pages#index'

  namespace :admin do
    resources :letters, :subjects
  end

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  resources :letters
  resources :subjects
  resources :student_registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
