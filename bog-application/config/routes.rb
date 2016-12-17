Rails.application.routes.draw do
  root "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
  get "creatures/new", to: "creatures#new"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
  get "creatures/:id/edit", to: "creatures#edit"
  patch "creatures/:id", to: "creatures#update"
  delete "creatures/:id", to: "creatures#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
