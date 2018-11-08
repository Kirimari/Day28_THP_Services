Rails.application.routes.draw do
  root 'home#index'
  post "/", to: "home#show"
  resources :cryptos
end
