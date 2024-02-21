Rails.application.routes.draw do
  resources :funcionarios do
    member do
      get 'atuacao'
      get 'contratos_por_funcionario'
    end
  end
  resources :contratos do
    collection do
      get 'top5'
    end
  end
  resources :musicas
  resources :albums
  resources :integrantes
  resources :artista do
    resources :albums
    collection do
      get 'buscar_por_id', to: 'artista#buscar_por_id'
      get 'buscar_albuns_pelo_artista', to: 'artista#buscar_albuns_pelo_artista'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
