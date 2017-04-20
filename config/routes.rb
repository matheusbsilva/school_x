Rails.application.routes.draw do
  resources :parents do
    resources :alumns
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
