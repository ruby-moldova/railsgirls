Rails.application.routes.draw do
  resources :candidate_profile, only: [:new, :create]

  devise_for :users, :controllers => {
    :sessions => "user/sessions"
  }

  root 'home#index'
end
