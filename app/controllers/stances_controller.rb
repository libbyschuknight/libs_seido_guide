class StancesController < ApplicationController
  def show
    @stance = Stance.find(params[:id])
    unless @stance
      flash[:error] = "Stance not found"
      redirect_to root_path
    end
  end

  def new
  end

  def create
    @stance = Stance.new(stance_params)

    if @stance.save
      redirect_to @stance
    else
      redirect_to(new_stance_path)
    end
  end

  private

  def stance_params
    params.require(:stance).permit(
      :japanese_name,
      :english_name,
      :description,
      :image
    )
  end

end
