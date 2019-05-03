Rails.application.routes.draw do
  resources :blogs do
    resource :comments, only: [:create, :destroy]
  end
end
