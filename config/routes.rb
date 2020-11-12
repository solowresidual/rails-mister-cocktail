Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, except: [ :index, :update, :destroy]
  resources :doses, only: [ :create, :new, :destroy]
end
