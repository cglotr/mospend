Rails.application.routes.draw do
  resources :spendings
  devise_for :users
  get "hello", to: "pages#hello"
  root to: "pages#home"
end
