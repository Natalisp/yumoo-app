Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'profile#home'
  post '/' => 'profile#home'#, as: 'recommend'
  post '/rating' => 'recommendations#rate', as: 'rating'

  resources :recommendations, only: [:index, :create]

  # get '/restaurants' => 'restaurants#new_search'
  post '/restaurants' => 'restaurants#find'
end
