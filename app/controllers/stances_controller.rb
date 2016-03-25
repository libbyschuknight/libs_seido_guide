class StancesController < ApplicationController
  def show
    @stance = Stance.find(params[:id])
  end

  def new
  end

  def create
    @stance = Stance.new(stance_params)

    @stance.save
    redirect_to @stance
  end

  private

  def stance_params
    params.require(:stance).permit(
      :name,
      :description,
      :image
    )
  end

end
