Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/webhooks/telegram', to: 'telegram#webhook', as: 'telegram_webhook'
end
