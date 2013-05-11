Conditions::Application.routes.draw do
  resources :sources

  root to: "reports#index"

  resources :sources, only: [:index] do
    resources :reports, only: [:index, :new, :create]
  end
end
