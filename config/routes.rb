Buraqly::Application.routes.draw do
  root "home#index"
  
  get "/search" => "home#search"
  get "/history" => "home#history"

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  match 'change_incognito_setting', to: 'users#change_incognito_setting', as: 'incognito', via: [:get]
  match 'error', to: 'home#error', via: [:get]

  match '*path', to: 'home#error', via: [:get]
end

