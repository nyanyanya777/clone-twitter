Rails.application.routes.draw do

  resources :records, only:[:index, :create, :new, :edit, :destroy, :update] do
  collection do
    post :confirm 
  end
end
  
  root 'top#index'
  
end