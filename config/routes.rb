Rails.application.routes.draw do
  resources :bookings
  resources :products
  resources :payments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  get 'home/about'
  get 'home/myproducts'
  get 'home/explore'

  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  get 'billing', to: 'billing#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
 #  match '*unmatched', to: 'application#render_404', via: :all,constraints: lambda { |req| req.path.exclude? 'rails/active_storage' }
end
 # Defines the root path route ("/")

  devise_scope :user do
  root 'devise/sessions#new'
end

resources :users do
  member do
    get :confirm_email
  end
end
end
