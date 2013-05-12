Conditions::Application.routes.draw do
  root to: "reports#index"

  scope 'sources/:source_id' do
    resources :reports, only: [:show, :new, :create], as: "source_reports"
  end
end
