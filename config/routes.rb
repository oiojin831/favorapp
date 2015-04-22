Rails.application.routes.draw do
  root to: "favors#new"
  resources :favors, only: [:create, :show]
end
