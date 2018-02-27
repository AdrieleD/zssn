class Trade < ActiveRecord::Base
  belongs_to :survivor

  def initialize(params)
    super

    @survivor_1   = Survivor.find(params['survivor_1']['id'])
    @survivor_2   = Survivor.find(params['survivor_2']['id'])
    @trade_parameters = [params['survivor_1'], params['survivor_2']]

  end

  def trade_process
    invalid_survivor
  rescue Exception => error
    return false
  end

  #verificar se os sobreviventes requisitados estão cadastrados e aptos a realizarem trocas
  #verificar se a quantidade de recursos de cada sobreviventes
  #realizar troca de recursos


  private

  #verifica se há sobreviventes cadastrados, se os sobreviventes requisitados estão cadastrados e se estão infectados
  def invalid_survivor
    if Survivor.any? #verifica se tem algum sobrevivente registrado
      return false
    end

    survivors.each_with_index do |survivor, index|
      if survivors.blank? #verifica se um dos dois sobreviventes foram cadastrados
        return false
      end

      if survivors.infected_survivor?
        return false
      end
    end
  end

  def survivors
  	[survivor_1, survivor_2]
  end
end
