# frozen_string_literal: true

Rails.application.routes.draw do
  resources :spending_months
  resources :spendings
  devise_for :users, path: "",
    path_names: { sign_in: "login", sign_out: "logout", sign_up: "signup" }
  get "hello", to: "pages#hello"
  root to: "pages#home"
end
