Rails.application.routes.draw do
  resources :welcome, only: [ :index ]

  resources :packages, param: :title, only: [ :index, :show ]



  root "welcome#index"

end
