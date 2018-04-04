SampleApp::Application.routes.draw do
  
  root  'static_pages#home'
  resources :users, only: [:show]
  devise_for :users
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  
end
