Rails.application.routes.draw do
  devise_for :users
  get 'student_registrations/new'

  get 'student_registrations/create'

  get 'student_registrations/show'

  root 'pages#index'

  namespace :admin do
    resources :letters
  end
  resources :letters

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
