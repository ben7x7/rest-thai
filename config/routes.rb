Rails.application.routes.draw do

  root 'pages#home'

  get 'lamaisonthai', to: 'pages#lamaisonthai', as: :lamaisonthai

  resources :reservations, only: [:new, :create]

end
