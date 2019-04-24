Rails.application.routes.draw do
  scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
    root 'pages#home'
    get 'lamaisonthai', to: 'pages#lamaisonthai', as: :lamaisonthai
    resources :reservations, only: [:new, :create]
  end
  match '*path',via: [:get, :post], to: redirect("/#{I18n.default_locale}/%{path}")
  match '',via: [:get, :post], to: redirect("#{I18n.default_locale}")
end
