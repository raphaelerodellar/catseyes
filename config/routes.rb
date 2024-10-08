Rails.application.routes.draw do
  devise_for :owners
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  get "owners/:id", to: "owners#show", as: :owner

  get "cats", to: "cats#index"
  get "cats/:id", to: "cats#show", as: :cat

  get "owners/:owner_id/cats/new", to: "cats#new", as: :new_owner_cat
  post "owners/owner_:id", to: "cats#create", as: :owner_cats

  get "cats/:id/edit", to: "cats#edit", as: :cat_edit

  patch "cats/:id", to: "cats#update"
  delete "cats/:id", to: "cats#destroy", as: :cat_delete

  delete "availabilities/:id", to: "availabilities#destroy", as: :availability_delete

  get "cats/:cat_id/availabilities/new", to: "availabilities#new", as: :new_cat_availability
  post "cats/:cat_id", to: "availabilities#create", as: :cat_availabilities

end
