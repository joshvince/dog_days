class MedicinesController < ApplicationController
  before_action :set_day, only: %i[ daily_doses update_daily_dose ]

  def daily_doses
    @doses = @day.doses
  end

  def update_daily_dose
    new_dose_id = params[:dose] || nil

    if @day.doses.create!(medicine_id: new_dose_id)
      redirect_to daily_doses_path(@day)
    end
  end

  private

  def set_day
    @day = Day.find(params[:id])
  end
end
