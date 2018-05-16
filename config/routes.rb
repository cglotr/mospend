Rails.application.routes.draw do
  resources :spending_months, shallow: true do
    resources :spendings
  end
  devise_for :users
  get "hello", to: "pages#hello"
  root to: "pages#home"
end
