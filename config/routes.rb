Rails.application.routes.draw do
  get 'home/top'

  resources :comments
  resources :tikokus
  resources :byouketus
  resources :gakunenns
  resources :seitos
  resources :kennkoukirokus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#top'
end
