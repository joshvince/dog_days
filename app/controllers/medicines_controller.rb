class MedicinesController < ApplicationController
  before_action :set_day

  def daily_doses
    @doses = @day.doses.reverse
  end

  def update_daily_dose
    new_dose_id = params[:dose] || nil

    if @day.doses.create!(medicine_id: new_dose_id)
      redirect_to daily_doses_path(@day)
    end
  end

  def create_new_dose
    new_medicine = Medicine.new(name: params[:name])

    Medicine.transaction do
      new_medicine.save!

      @day.doses.create!(medicine_id: new_medicine.reload.id)
    end

    redirect_to daily_doses_path(@day)
  end
  private

  def set_day
    @day = Day.find(params[:id])
  end
end
