Rails.application.routes.draw do
  resources :reservations, only: [:new, :create]
  root 'pages#home'
end
