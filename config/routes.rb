Rails.application.routes.draw do
  resources :appliances, only: [:index]
  resources :hours, only: [:index]
  resources :visitor_requests, only: [:create, :index]
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
