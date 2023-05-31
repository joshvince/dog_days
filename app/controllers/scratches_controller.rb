class ScratchesController < ApplicationController

  def show
    @day = Day.find(params[:id])
    @scratches = @day.scratches.count
  end
end
