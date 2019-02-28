Rails.application.routes.draw do
  resources :addresses
  resources :orders do
    member do
      get :confirm
    end
  end
  resources :order_items
  resources :products
  match '/auth/:provider/callback', to: 'sessions#create', via: :get
  match "/login" => redirect("/auth/twitter"), as: :login, via: :get
  match "/logout" => "sessions#destroy", as: :logout, via: :get
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
