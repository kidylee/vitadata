Rails.application.routes.draw do
  resources :txns
  resources :encriptions
  resources :labels
  resources :users
  resources :blocks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
