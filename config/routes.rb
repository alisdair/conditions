Conditions::Application.routes.draw do
  root to: "reports#index"

  get "current" => "current#show"

  scope "sources/:source_id" do
    resources :reports, only: [:show, :new, :create], as: "source_reports"
  end
end
