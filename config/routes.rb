Rails.application.routes.draw do
  resources :genres
  resources :artists
  resources :songs
  post '/artists/new', to: "artists#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
