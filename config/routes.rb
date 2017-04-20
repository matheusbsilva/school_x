Rails.application.routes.draw do
  resources :parents do
    resources :alumns
  end
  resources :alumns

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
