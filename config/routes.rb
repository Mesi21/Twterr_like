Rails.application.routes.draw do
  devise_for :users
  resources :twts
  root "twts#index"
end
