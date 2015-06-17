Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  root             'static_pages#home'

  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'

end
