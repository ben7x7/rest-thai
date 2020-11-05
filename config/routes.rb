Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    get 'lamaisonthai', to: 'pages#lamaisonthai', as: :lamaisonthai
    get 'mentions', to: 'pages#mentions', as: :mentions
    get 'confidentialite', to: 'pages#confidentialite', as: :confidentialite
    resources :reservations, only: [:new, :create]
  end
end
