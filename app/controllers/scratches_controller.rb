class ScratchesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[ add_to_today ]
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

  def add_to_today
    @day = Day.find_or_create_today
    @scratch = Scratch.new(day: @day)

    if @scratch.save
      render json: { status: 'created' }
    end
  end

  private

  def set_day
    @day = Day.find(params[:id])
  end
end
