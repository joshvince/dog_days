class ScratchesController < ApplicationController
  before_action :set_day, only: %i[ show add remove ]

  def show
    @scratches = @day.scratches.order(created_at: :desc)
    @total = @scratches.count
  end

  def add
    Scratch.new(day: @day).save

    redirect_to scratch_path(@day.id)
  end

  def remove
    Scratch.where(day: @day).order(created_at: :desc).first&.delete

    redirect_to scratch_path(@day.id)
  end

  private

  def set_day
    @day = Day.find(params[:id])
  end
end
