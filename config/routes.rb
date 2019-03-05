Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'signup', to: 'users#new'
  resources :petitions do
    member do
      put "support", to: "petitions#support"
      put "unsupport", to: "petitions#unsupport"
  end
end
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
