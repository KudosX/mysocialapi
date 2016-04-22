Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'

  get 'static_pages/about'

  get 'static_pages/faq'

  get 'static_pages/contact'

  devise_for :users, :controllers => { :omniauth_callbacks => 'omniauth_callbacks' }
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/logout', to: 'sessions#destroy', via: [:get, :post]
end
