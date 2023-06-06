class DaysController < ApplicationController
  before_action :set_day, only: %i[ show edit update destroy ]

  def today
    today = all_days_with_today.first

    redirect_to day_path(today)
  end

  # GET /days or /days.json
  def index
    @days = all_days_with_today
  end

  # GET /days/1 or /days/1.json
  def show
    @scratches = @day.scratches
  end

  # GET /days/new
  def new
    @day = Day.new
  end

  def ear_state
    @ear_state = @day.ear_state
    @all_ear_states = Day.ear_states
  end

  def update_ear_state
    new_ear_state = params[:ear_state] || nil

    if @day.update!(ear_state: new_ear_state)
      redirect_to ear_state_path(@day)
    end
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days or /days.json
  def create
    @day = Day.new(day_params)

    respond_to do |format|
      if @day.save
        format.html { redirect_to day_url(@day), notice: "Day was successfully created." }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1 or /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to day_url(@day), notice: "Day was successfully updated." }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1 or /days/1.json
  def destroy
    @day.destroy

    respond_to do |format|
      format.html { redirect_to days_url, notice: "Day was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def day_params
      params.require(:day).permit(:date, :ear_state)
    end

    def all_days_with_today
      days = Day.all.order(date: :desc)

      unless days.first&.date == Date.today
        today = Day.new(date: Date.today)
        today.save!

        days.reload
      end

      days
    end
end
