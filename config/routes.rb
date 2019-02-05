Rails.application.routes.draw do
  resources :solutions
  resources :reviews
  resources :offers
  resources :bloggers
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
