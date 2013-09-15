Randevoo::Application.routes.draw do
  resources :users

  resources :events

  root to: 'high_voltage/pages#show', id: 'home'
end
