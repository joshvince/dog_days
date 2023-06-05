class EarStatesController < ApplicationController
  before_action :set_day, only: %i[ ear_state update_ear_state ]

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

  private

  def set_day
    @day = Day.find(params[:id])
  end
end
