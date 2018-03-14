Rails.application.routes.draw do
  get 'sessions/new'

	resources :users
  
  

  get 'about' => 'static_pages#about'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  root 'static_pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
