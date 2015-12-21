Rails.application.routes.draw do
  
  get 'category/index'

  root "pages#home" 
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {
                 omniauth_callbacks: 'omniauth_callbacks',
                 registrations: 'registrations'
             }

  resource :product        
  resource  :vendors
  resource  :categories

  get 'vendor/dashboard'
  get 'pages/products'

end