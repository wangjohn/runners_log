class RunHistoriesController < ApplicationController
  before_action :set_run_history, only: [:show, :edit, :update, :destroy]

  # GET /run_histories
  # GET /run_histories.json
  def index
    @run_histories = RunHistory.all
  end

  # GET /run_histories/1
  # GET /run_histories/1.json
  def show
  end

  # GET /run_histories/new
  def new
    @run_history = RunHistory.new
  end

  # GET /run_histories/1/edit
  def edit
  end

  # POST /run_histories
  # POST /run_histories.json
  def create
    @run_history = RunHistory.new(run_history_params)

    respond_to do |format|
      if @run_history.save
        format.html { redirect_to @run_history, notice: 'Run history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @run_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @run_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /run_histories/1
  # PATCH/PUT /run_histories/1.json
  def update
    respond_to do |format|
      if @run_history.update(run_history_params)
        format.html { redirect_to @run_history, notice: 'Run history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @run_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /run_histories/1
  # DELETE /run_histories/1.json
  def destroy
    @run_history.destroy
    respond_to do |format|
      format.html { redirect_to run_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run_history
      @run_history = RunHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_history_params
      params.require(:run_history).permit(:user_id, :avg_duration, :avg_distance)
    end
end
