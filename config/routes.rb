Rails.application.routes.draw do
  resources :blogs do
    resources :comment, only: [:create]
  end
end
