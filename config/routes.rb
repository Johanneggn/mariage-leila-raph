Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'guests#new'
  resources :guests, only: [:new, :create]
end
