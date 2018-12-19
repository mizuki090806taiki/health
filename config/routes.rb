Rails.application.routes.draw do
  get 'summary/result',as: 'sumresult'

  resources :kaunseringu_yoyakus
  resources :kaunsering_schedules
  get 'sessions/new'

  get     'login',  to: 'sessions#new'
  post    'login',  to: 'sessions#create'
  delete  'logout', to: 'sessions#destroy'

  resources :users
#get 'kennkoukiroku_makerecord/new'
  resources :kennkoukiroku_makerecord

  get 'home/top'

  resources :comments
  resources :tikokus
  resources :byouketus
  resources :gakunenns
  resources :seitos
  resources :kennkoukirokus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#top'

  post '/kennkoukirokus_search', to: 'kennkoukirokus#search'
  post '/seito_gakunenn_select', to: 'seitos#search_nenndo'
end
