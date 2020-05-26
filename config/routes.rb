Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create, :edit, :update, :show]
  resources :school_class, only: [:index, :new, :create, :edit, :update, :show]
end
