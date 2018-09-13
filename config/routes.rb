Rails.application.routes.draw do
  root to: 'home#index'
  resource :multiple_records, only: [:create, :destroy]
end
