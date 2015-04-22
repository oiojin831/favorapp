Rails.application.routes.draw do
  root to: "favors#index"
  resources :favors, only: [:index, :new, :create, :show]
end
