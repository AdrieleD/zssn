class Report < ActiveRecord::Base

  def self.infected
    if Survivor.any? #verifica se tem algum sobrevivente registrado
      infected_survivors = Survivor.select(&:infected_survivor?)

      percentage_infected = (infected_survivors.length.to_f / Survivor.count) * 100 #retorna a porcentagem de sobreviventes infectados

    end
  end

  # def self.non_infected
  #   if Survivor.any? #verifica se tem algum sobrevivente registrado
  #     non_infected_survivors = Survivor.count - Survivor.select(&:infected_survivor?)
  #
  #     return percentage_non_infected = (non_infected_survivors.length.to_f / Survivor.count) * 100
  #
  #   end
  # end
end
