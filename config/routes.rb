Rails.application.routes.draw do
  root 'main#index'
  resources :solutions
  resources :reviews
  resources :offers
  resources :bloggers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
