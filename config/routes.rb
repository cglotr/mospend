# frozen_string_literal: true

Rails.application.routes.draw do
  resources :spending_months, only: [:show]
  resources :spendings, only: [:new, :create, :destroy]

  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :new_user_session
    get "password", to: "devise/passwords#new", as: :new_user_password
    get "signup", to: "devise/registrations#new", as: :new_user_registration

    post "login", to: "devise/sessions#create", as: :user_session
    post "password", to: "devise/passwords#create", as: :user_password
    post "signup", to: "devise/registrations#create", as: :user_registration

    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  devise_for :users, path: "",
    path_names: { sign_in: "login", sign_out: "logout", sign_up: "signup" }, skip: :all

  get "hello", to: "pages#hello"
  get "*path" => "pages#not_found"

  root to: "pages#home"
end
