Rails.application.routes.draw do
  root "creatures#index"

	get "/creatures", to: "creatures#index", as: "creatures"
	get "/creatures/new", to: "creatures#new", as: "creatures_new"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
  get "/creatures/:id/edit", to: "creatures#edit"
  patch "/creatures/:id", to: "creatures#update", as: "creature_update"
  delete "/creatures/:id", to: "creatures#destroy"

end
