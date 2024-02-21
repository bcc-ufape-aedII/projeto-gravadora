Rails.application.routes.draw do
  resources :funcionarios do
    resources :contratos
    member do
      get 'atuacao'
    end
    collection do
      get 'contratos_por_funcionario', to: 'funcionarios#contratos_por_funcionario'
      get 'top5', to: 'contratos#top5'
    end
  end
  resources :contratos do
    collection do
      get 'buscar_por_id', to: 'contratos#buscar_por_id'
    end
  end
  resources :musicas

  resources :albums do
    collection do
      get 'buscar_por_id', to: 'albums#buscar_por_id'
    end
  end

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
