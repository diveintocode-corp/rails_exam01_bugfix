Rails.application.routes.draw do
  # ErrorCause: uninitialized constant BlogController
  # FixReason: Fix typo （blog --> blogs） resources should be plural according to controller's name
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
