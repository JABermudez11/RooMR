Rails.application.routes.draw do
  resources :tenant_profiles
  resources :roomie_profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
