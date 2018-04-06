Rails.application.routes.draw do
  get 'lr8/view'

  get 'lr8/input'

  root 'lr8#input'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
