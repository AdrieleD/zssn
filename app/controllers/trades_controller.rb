class TradesController < ApplicationController

  def trade_resources
    trade = Trade.new(trade_parameters)

 #testar troca de recursos
  if trade.trade_process
      return true
    else
      return false
    end
  end

  private

  #testar
  def trade_parameters
    params.require(:trade).permit(survivor_1: [:id, resources: [[:water, :food, :medication, :ammunition]]],
                                  survivor_2: [:id, resources: [[:water, :food, :medication, :ammunition]]])
    end

end
