class Bots::Dungeon < Bots::Base
  def call(text)

    if text == "Oi"
      send_message("Oi tudo bom ?")
    end

    if text == "Sim!"
      send_message("Que ótimo! Excelente!")
    end
  end
end