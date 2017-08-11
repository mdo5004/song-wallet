Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#home'
    resources :songs, only: [:create,:update,:show,:index,:destroy]
    resources :users, only: [:create,:update,:show,:index,:destroy]
    resources :setlists, only: [:create,:update,:show,:index,:destroy]
    resources :groups, only: [:create,:update,:show,:index,:destroy]
    
    post 'authenticate', to: 'authentication#authenticate'
    
end
