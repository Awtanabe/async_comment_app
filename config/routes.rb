Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :products do 
    resources :comments
  end
  devise_for :users
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
