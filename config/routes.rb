Rails.application.routes.draw do

  devise_for :authors
  resources :muses
  resources :profiles
  resources :collabs
  resources :comments
  resources :capsules
  resources :mindmaps
  root 'profiles#new'

end
