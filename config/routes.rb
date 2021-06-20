Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [] do
    member { patch :accept }
    member { patch :deny }
    member { patch :cancel }
  end

  resource :dashboard, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
