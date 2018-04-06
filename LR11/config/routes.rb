Rails.application.routes.draw do
  root 'main#index'

  get 'main/clean'

  get 'main/results'

  get 'main/index'

  get 'main/view'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
