Rails.application.routes.draw do
  get 'personas/users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post ':controller(/:action(/:id(.:format)))'
end