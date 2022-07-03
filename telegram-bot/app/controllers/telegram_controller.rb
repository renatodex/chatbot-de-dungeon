require 'telegram/bot'

class TelegramController < ApplicationController
  before_action :auth
  skip_before_action :verify_authenticity_token

  def webhook
    webhook = Telegram::Bot::Types::Update.new(params.permit!.to_h)

    Bots::Dungeon.new(webhook.message).call(webhook.message.text)
  end

  private

  def auth
    Raise "Unauthorized" unless request.headers["X-Telegram-Bot-Api-Secret-Token"] == ENV["TELEGRAM_WEBHOOK_TOKEN"]
  end
end