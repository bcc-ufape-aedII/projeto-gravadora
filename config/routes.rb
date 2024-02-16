Rails.application.routes.draw do
  resources :funcionarios
  resources :contratos
  resources :musicas
  resources :albums
  resources :integrantes
  resources :artista
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
