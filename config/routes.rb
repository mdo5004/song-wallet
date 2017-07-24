Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :songs, only: [:index,:create,:update,:destroy,:show]
    resources :users, only: [:create,:update,:show,:index,:destroy]
    post 'authenticate', to: 'authentication#authenticate'
    
end
