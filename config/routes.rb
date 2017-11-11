Rails.application.routes.draw do
  resources :people, except: [:show]

  root to: "people#index"
=begin
  get 'people/index'

  get 'people/new'

  get 'people/create'

  get 'people/edit'

  get 'people/update'

  get 'people/destroy'
=end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
