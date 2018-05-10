Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [ :index, :new, :create, :show ], shallow: true do
    resources :doses, only: [ :new, :create, :destroy ], shallow: true
  end
end
