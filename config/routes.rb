Rails.application.routes.draw do
  
  root "pages#products"

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {
                 omniauth_callbacks: 'omniauth_callbacks',
                 registrations: 'registrations'
             }

  resource 'products'          
  resource  'vendors'
  resource  'categories'

end
