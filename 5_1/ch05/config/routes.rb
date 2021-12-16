Rails.application.routes.draw do
  root 'static_pages#home' # => root_path
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

  # => contact_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'

end
