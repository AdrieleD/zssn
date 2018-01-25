class ReportController < ApplicationController
  def infected
    	render json: { percentage_of_infected_survivors: Report.infected }
  end

  def non_infected
    	render json: { percentage_non_infected: Report.non_infected }
  end

  def average_resources
    render json: { average_resources: Report.average_resources }
  end

  def points_lost
    render json: { points_lost: Report.points_lost }
  end
end
