Rails.application.routes.draw do
  root 'gigs#index'
  devise_for :users

  resources :gigs, only: [:index, :new, :create, :show] do

  end
end
