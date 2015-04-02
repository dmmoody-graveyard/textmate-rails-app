Rails.application.routes.draw do
  resources :contacts do
    resources :messages, :only => [:create, :new]
  end

  resources :messages, :only => [:index, :new, :create, :show]

end
