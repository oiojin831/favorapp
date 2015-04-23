Rails.application.routes.draw do
  root to: "homes#show"
  resources :favors, only: [:index, :new, :create, :show]
end
