Rails.application.routes.draw do
  devise_for :doctors
  get 'static_pages/home'

  resources :patients do 
  	resources :visits
  end
  resources :users
  
  root 'static_pages#home'

end
