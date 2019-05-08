Rails.application.routes.draw do
  root 'gigs#index'
  devise_for :users

  resources :gigs, only: [:index, :new, :create, :show] do
end
    namespace :api do
      namespace :v1 do
        resources :musicians, only: [:index, :show]
      end
    end

end
