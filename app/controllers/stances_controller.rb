class StancesController < ApplicationController

  def new
    @stance = Stance.new
  end

  def create
    @stance = Stance.new(stance_params)

    if @stance.save
      redirect_to @stance
    else
      redirect_to(new_stance_path)
    end
  end

  def show
    @stance = Stance.find_by_id(params[:id])
    unless @stance
      flash[:error] = "Stance not found"
      redirect_to root_path
    end
  end

  def index
    @stances = Stance.all
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
