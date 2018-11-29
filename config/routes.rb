Rails.application.routes.draw do
  #these come by default and they should be deleted
  # get 'people/index'
  # get 'people/show'
  # get 'people/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  #this should be typed which its the same as 
  # get '/', to: 'people#index'
  root 'people#index'

  resources :people

end
