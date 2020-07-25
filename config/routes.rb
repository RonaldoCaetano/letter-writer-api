Rails.application.routes.draw do
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
  get '/get_current_user', to: "sessions#get_current_user"
  resources :contacts, only: [:index]
  resources :territories, only: [:index, :show] do 
    resources :dncs
  end
  resources :dncs, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
