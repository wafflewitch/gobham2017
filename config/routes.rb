Rails.application.routes.draw do
  # get 'events/new'

  # get 'events/show'

  # get 'events/edit'

  # get 'events/index'

  # get 'users/new'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/index'

  get 'events/dashboard', to: 'events#dashboard'

  devise_for :users

  resources :users

  resources :events

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
