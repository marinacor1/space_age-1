Rails.application.routes.draw do
  resources :welcome, only: [ :index ]

  resources :packages, only: [ :index, :show ]

  resources :destinations, only: [ :show ]

  root "welcome#index"

end
