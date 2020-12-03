Rails.application.routes.draw do
  get 'articles/index'

  resources :articles do # declares a REST source. 
    resources :comments
  end
  root 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
