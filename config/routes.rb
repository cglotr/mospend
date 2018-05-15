Rails.application.routes.draw do
  devise_for :users
  get "hello", to: "pages#hello"
  root to: "pages#home"
end
