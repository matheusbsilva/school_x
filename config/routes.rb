Rails.application.routes.draw do
  resources :parents do
    resources :alumns
  end
  resources :alumns
  resources :subjects
  resources :grades

  resources :alumns do
    resources :subjects do
      resources :grades
    end
  end

  # resources :subjects do
  #   resources :alumns
  #   resources :grades
  # end

  get 'login', to:'sessions#new', as:'login'
  post 'login', to:'sessions#create'
  get 'logout', to:'sessions#destroy', as:'logout'

  get 'users', to:'users#index', as:'users'
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
