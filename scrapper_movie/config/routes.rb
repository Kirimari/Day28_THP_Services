Rails.application.routes.draw do
  root 'movies#search'
  post '/movies/search', to: 'movies#search'
  get '/search', to: 'movies#search'
end
