Rails.application.routes.draw do
    

  resources :conditions
  resources :places
  resources :bullying_types
  resources :complaint_types
    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'

    resources :sessions, only: [:create, :destroy]
    resources :allhands do
    	collection do
      		get 'validate'
    	end
    end

  root 'allhands#index'
end
