Rails.application.routes.draw do
  get 'restaurants/index'

  get 'restaurants/new'

  get 'restaurants/create'

  get 'restaurants/show'

  # # READ
  # # READ ALL
  get "restaurants", to: "restaurants#index"

  #  # CREATE
  # # Permet d'afficher le formulaire à remplir
  get "restaurants/new", to: "restaurants#new"

  # # Permet de soumettre les champs remplis par l'user
  post "restaurants", to: "restaurants#create"

  # # READ ONE
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # # UPDATE
  # # Donner le formulaire à modifier
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit
  # # Soummetre les modifs et enregistrer
  # patch "restaurants/:id", to: "restaurants#update"

  # # DELETE
  # delete "restaurants/:id", to: "restaurants#destroy"
end
