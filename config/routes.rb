Rails.application.routes.draw do
  root 'cycles#index'
  resources :cycles, only: [:index] do
    resources :invitations, only: [:new, :create]
  end
end
