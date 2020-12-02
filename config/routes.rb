Rails.application.routes.draw do
  get 'welcom/index'

  resources :articles do # declares a REST source. 
    resources :comments
  end
  root 'welcom#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
