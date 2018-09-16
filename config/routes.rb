Rails.application.routes.draw do
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  root to: 'home#index'
  resource :multiple_records, only: [:create, :destroy]

  mount Sidekiq::Web => '/sidekiq'
end
