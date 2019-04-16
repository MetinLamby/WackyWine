Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root "pages#show", page: "home"

  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :wines, only: [:index, :show] do
    resources :order_items, only: [ :new, :create ]
  end
  resources :order_items, only: [ :destroy ]

  resources :orders, only: [:index, :show, :create] do
    resources :payments, only: [:new, :create]
  end


end
