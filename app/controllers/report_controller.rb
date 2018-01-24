class ReportController < ApplicationController
  def infected
    	render json: { percentage_of_infected_survivors: Report.infected }
  end

  def non_infected
    	render json: { percentage_non_infected: Report.non_infected }
  end
end
