# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: "", path_names: {
    sign_in: "login",
    sign_out: "logout",
    registration: "signup"
  },
  controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root "rooms#index"
  resources :messages
  resources :rooms
  get "/current_user", to: "current_user#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
