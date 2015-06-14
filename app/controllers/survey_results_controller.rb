class SurveyResultsController < ApplicationController
  before_action :set_survey_result, only: [:show, :edit, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  # GET /survey_results
  # GET /survey_results.json
  def index
    @survey_results = SurveyResult.all
  end

  # GET /survey_results/1
  # GET /survey_results/1.json
  def show
  end

  # GET /survey_results/new
  def new
    @survey_result = SurveyResult.new
  end

  # GET /survey_results/1/edit
  def edit
  end

  # POST /survey_results
  # POST /survey_results.json
  def create
    collected_data = JSON.parse params["collected_data"]
    new_survey_params = {
      liberty: collected_data["DATA_PROMPT_1"],
      sexy: collected_data["DATA_PROMPT_2"],
      mobile: collected_data["SRC"],
      wigs_wired: collected_data["DATA_PROMPT_3"]
    }
    @survey_result = SurveyResult.new(new_survey_params)
    respond_to do |format|
      if @survey_result.save
        render :nothing => true
      else
        render json: @survey_result.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /survey_results/1
  # PATCH/PUT /survey_results/1.json
  def update
    respond_to do |format|
      if @survey_result.update(survey_result_params)
        format.html { redirect_to @survey_result, notice: 'Survey result was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_result }
      else
        format.html { render :edit }
        format.json { render json: @survey_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_results/1
  # DELETE /survey_results/1.json
  def destroy
    @survey_result.destroy
    respond_to do |format|
      format.html { redirect_to survey_results_url, notice: 'Survey result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_result
      @survey_result = SurveyResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_result_params
      params.require(:survey_result).permit(:mobile, :liberty, :sexy, :wigs_wired)
    end
end
