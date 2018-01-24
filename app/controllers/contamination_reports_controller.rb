class ContaminationReportsController < ApplicationController

  before_action :set_contamination_report, only: [:show, :destroy]

  # GET /contamination_reports
  # GET /contamination_reports.json
  def index
    @contamination_reports = ContaminationReport.all
  end

  # GET /contamination_reports/1
  # GET /contamination_reports/1.json
  def show
  end

  # GET /contamination_reports/new
  def new
    @contamination_report = ContaminationReport.new
  end

  # GET /contamination_reports/1/edit
  def edit
  end

  # POST /contamination_reports
  # POST /contamination_reports.json
  def create
    @contamination_report = ContaminationReport.new(contamination_report_params)

    respond_to do |format|
      if @contamination_report.save
        format.html { redirect_to @contamination_report, notice: 'Contamination report was successfully created.' }
        format.json { render :show, status: :created, location: @contamination_report }
      else
        format.html { render :new }
        format.json { render json: @contamination_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contamination_reports/1
  # PATCH/PUT /contamination_reports/1.json
  def update
    respond_to do |format|
      if @contamination_report.update(contamination_report_params)
        format.html { redirect_to @contamination_report, notice: 'Contamination report was successfully updated.' }
        format.json { render :show, status: :ok, location: @contamination_report }
      else
        format.html { render :edit }
        format.json { render json: @contamination_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contamination_reports/1
  # DELETE /contamination_reports/1.json
  def destroy
    @contamination_report.destroy
    respond_to do |format|
      format.html { redirect_to contamination_reports_url, notice: 'Contamination report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contamination_report
      @contamination_report = ContaminationReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contamination_report_params
      params.require(:contamination_report).permit(:survivor_id)
    end
end
