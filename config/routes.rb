Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root "pages#show", page: "home"

  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :wines, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
