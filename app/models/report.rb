class Report < ActiveRecord::Base
  belongs_to :survivor

  def self.infected
    if Survivor.any? #verifica se tem algum sobrevivente registrado
      infected_survivors = Survivor.select(&:infected_survivor?)

      return percentage_infected = (infected_survivors.length.to_f / Survivor.count) * 100 #retorna a porcentagem de sobreviventes infectados

    end
  end

  def self.non_infected
    if Survivor.any? #verifica se tem algum sobrevivente registrado
      non_infected = Survivor.select(&:non_infected_survivor?)

      return percentage_non_infected = (non_infected.length.to_f / Survivor.count) * 100 #retorna a porcentagem de sobreviventes infectados

    end
  end

  def self.average_resources
    if Survivor.any? #verifica se tem algum sobrevivente registrado
      water = 0
      food = 0
      medication = 0
      ammunition = 0

      survivors = Survivor.select(&:non_infected_survivor?)
      survivors.each do |s|
        if s.inventory != nil
          water += s.inventory.water
          food += s.inventory.food
          medication += s.inventory.medication
          ammunition += s.inventory.ammunition
        end
      end

      report = {Water: (water.to_f / survivors.count), Food: (food.to_f  / survivors.length), Medication: (medication.to_f / survivors.length), Ammunition: (ammunition.to_f / survivors.length)}
    end
  end

  def self.points_lost
    if Survivor.any? #verifica se tem algum sobrevivente registrado
      water = 0
      food = 0
      medication = 0
      ammunition = 0

      survivors = Survivor.select(&:infected_survivor?)  #retorna sobreviventes infectados
      survivors.each do |s|
        water += s.inventory.water
        food += s.inventory.food
        medication += s.inventory.medication
        ammunition += s.inventory.ammunition
      end

      # Item 	        Pontos
      # 1 Água 	      4 pontos
      # 1 Comida 	    3 pontos
      # 1 Medicação 	2 pontos
      # 1 munição 	  1 ponto

      report = {Water: (water * 4), Food: (food * 3), Medication: (medication * 2), Ammunition: (ammunition * 1)}

    end
  end

end
