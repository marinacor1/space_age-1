Rails.application.routes.draw do
  resources :welcome, only: [ :index ]

  resources :packages, only: [ :index ]
  


  root "welcome#index"

end
