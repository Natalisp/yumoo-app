Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'profile#home'
  post '/recommend' => 'profile#recommend', as: 'recommend'

  resources :recommendations, only: [:index, :create]
end
