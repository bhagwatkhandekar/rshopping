Rails.application.routes.draw do
  get 'products/product_listing', to: 'products#product_listing', as: :product_listing
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "main#home"
end
