Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    get 'lamaisonthai', to: 'pages#lamaisonthai', as: :lamaisonthai
    resources :reservations, only: [:new, :create]
  end
end
