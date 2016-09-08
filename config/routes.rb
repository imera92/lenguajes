Rails.application.routes.draw do
  resources :surveys
  root 'static_pages#home'
  get  '/signup',    to: 'teachers#new'
  post '/signup',  to: 'teachers#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/surveys', to: 'surveys#index'
  resources :teachers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
