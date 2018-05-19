# frozen_string_literal: true

Rails.application.routes.draw do
  resources :spending_months
  resources :spendings
  devise_for :users
  get "hello", to: "pages#hello"
  root to: "pages#home"
end
