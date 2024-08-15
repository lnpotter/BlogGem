Rails.application.routes.draw do
  resources :posts, param: :slug, only: [:index, :show, :create, :update, :destroy]
end
