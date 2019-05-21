Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/profile/:id', to: 'users#show', as: :user

  resources :items, only: [:index, :show]

  resources :users, only:[:new, :create, :edit]

end
