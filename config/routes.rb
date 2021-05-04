Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :laptops do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [] do
    member { patch :accept }
    member { patch :deny }
  end

  resource :dashboard, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
