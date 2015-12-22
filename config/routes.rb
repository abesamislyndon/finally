Rails.application.routes.draw do
  
  get 'sub_category/index'

  get 'category/index'

  root "pages#home" 
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {
                 omniauth_callbacks: 'omniauth_callbacks',
                 registrations: 'registrations'
             }

  resources :products        
  resource  :vendors
  resource  :categories
  resources :sub_category   


  get 'vendor/dashboard'
  get 'pages/products'

end