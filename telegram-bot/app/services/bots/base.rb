class Bots::Base
  def initialize(message)
    @message = message
  end

  private
  def message
    @message
  end

  def client
    @client ||= Telegram::Bot::Api.new(ENV["TELEGRAM_BOT_TOKEN"])
  end

  def send_message(text)
    client.send_message(chat_id: message.chat.id, text: text)
  end
end