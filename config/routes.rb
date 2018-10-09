Rails.application.routes.draw do
  resources :comments
  resources :tikokus
  resources :byouketus
  resources :gakunenns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
