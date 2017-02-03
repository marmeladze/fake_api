Rails.application.routes.draw do
  resources :people do 
    get :attached_bills, on: :member
  end
  resources :bills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
