Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :arts, only: [:index, :show, :new, :create ] do
    resources :purchases, only: [:show, :new, :create]
  end
  
  get "myprofile", to: "pages#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
