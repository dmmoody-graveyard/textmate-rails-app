Rails.application.routes.draw do
<<<<<<< HEAD
  resources :messages, :only => [:index, :new, :create, :show]
=======
  resources :contacts do
    resources :messages, :only => [:create, :new]
  end

  resources :messages, :only => [:index, :new, :create, :show]

>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
end
