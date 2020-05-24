Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  get 'erea', to: 'toppages#show'
  
  get 'asia',to: 'toppages#asia'
  get 'europe',to: 'toppages#europe'
  get 'hawaii',to: 'toppages#hawaii'
  get 'africa',to: 'toppages#africa'
  get 'east',to: 'toppages#east'
  get 'russia',to: 'toppages#russia'
  get 'america',to: 'toppages#america'
  get 'india',to: 'toppages#india'
  get 'oceania',to: 'toppages#oceania'
  get 'caribbean',to: 'toppages#caribbean'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
   resources :users, only: [:index, :show, :new, :create, :edit, :destroy]
   
   resources :posts, only: [:index, :show, :new, :create, :edit, :destroy]
end
