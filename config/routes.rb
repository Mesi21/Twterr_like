Rails.application.routes.draw do
  devise_for :users, :controllers => { registration: 'registrations' }
  resources :twts
  root "twts#index"
end
