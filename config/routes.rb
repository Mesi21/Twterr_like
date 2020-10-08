Rails.application.routes.draw do
  resources :twts
  root "twts#index"
end
