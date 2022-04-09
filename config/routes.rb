Rails.application.routes.draw do
  root 'cycles#index'
  resources :cycles, only: [:index]
  resources :invitations, only: [:new, :create]
end
