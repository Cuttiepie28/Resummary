Rails.application.routes.draw do
  # get 'resume/index'
  #
  get 'resume' , to: 'resume#show'
  #
  # get 'resume/edit'
  #
  # get 'resume/destroy'
  resources :users

  resources :projects do
    resources :collaborations
  end
  get 'signup', to: 'users#new'

  root 'sessions#index'
  get '/index', to: "projects#index" #how edit the url to look like it's from /legal

  get '/login', to: 'sessions#new'

  delete 'logout', to: 'sessions#destroy'
  resources :sessions, only: [:create]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
