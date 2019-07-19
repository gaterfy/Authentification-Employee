Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :product do
  collection do
     get :manager
     post :employee
   end
 end
end
