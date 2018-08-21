Rails.application.routes.draw do
  resources :students
  resources :cars
  get 'usuarios/new'
  get 'carros/carro'
  # get 'personas/users'
  get 'images/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :images
  resources :usuarios
  post ':controller(/:action(/:id(.:format)))'
  root :to => "welcome#index"

end
