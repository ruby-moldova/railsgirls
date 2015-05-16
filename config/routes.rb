Rails.application.routes.draw do
  resources :candidate_profile, only: [:new, :create]

  devise_for :users

  namespace :admin do
    resources :candidate_profiles, only: [:index, :show]
    root 'candidate_profiles#index'
  end

  get '/' => 'guides#index', :constraints => { :subdomain => /guides/ }
  root 'home#index'
end
