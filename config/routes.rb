Rails.application.routes.draw do
  get 'welcom/index'

  resources :articles # declares a REST source. 

  root 'welcom#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  






end
