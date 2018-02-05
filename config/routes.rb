Rails.application.routes.draw do
	root to: 'site#index'

  namespace :api do
  	namespace :v1 do
  		resources :cards, only: [:index, :create, :destroy, :update]
  	end
  end

  resources :cards
  
end
