Rails.application.routes.draw do
  
  root "pages#home" 

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {
                 omniauth_callbacks: 'omniauth_callbacks',
                 registrations: 'registrations'
             }

  resources  :vendors, :only => [:show, :new, :create] 
  resources  :category, :only => [:new, :create]   
  resources :sub_category, :only => [:show, :new, :create]   
  resources :products , :only => [:show, :new, :create]   
 
  
  get 'sub_category/index'
  get 'category/index'
  get 'vendor/index'
  get 'vendors/dashboard'
 
end