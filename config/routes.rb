Rails.application.routes.draw do
  resources :blog do
    resources :comments, only: [:create, :destroy]
  end
end
