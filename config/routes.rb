Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/signup',    to: 'teachers#new'
  post '/signup',  to: 'teacher#create'
  resources :teachers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
