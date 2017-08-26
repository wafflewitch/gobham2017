Rails.application.routes.draw do
  get 'events/new'

  get 'events/show'

  get 'events/edit'

  get 'events/index'

  get 'acts/new'

  get 'acts/show'

  get 'acts/edit'

  get 'acts/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'users/index'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
