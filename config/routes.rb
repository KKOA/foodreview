Rails.application.routes.draw do
  get 'restaurants/index'

  resources :restaurants do
    resources :reviews
  end
  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
