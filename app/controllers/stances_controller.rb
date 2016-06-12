class StancesController < ApplicationController

  def index
    @stances = Stance.all
  end

  def show
    @first_stance = Stance.all.first
    @last_stance = Stance.all.last
    @stance = Stance.find_by_id(params[:id])
    unless @stance
      flash[:error] = "Stance not found"
      redirect_to root_path
    end
  end

  def new
    @stance = Stance.new
  end

  def edit
    @stance = Stance.find(params[:id])
  end

  def create
    @stance = Stance.new(stance_params)

    if @stance.save
      redirect_to @stance
    else
      redirect_to(new_stance_path)
    end
  end

  def update
    @stance = Stance.find(params[:id])

    if @stance.update(stance_params)
      redirect_to @stance
    else
      render "edit"
    end
  end

  def destroy
    @stance = Stance.find(params[:id])
    @stance.destroy

    redirect_to stances_path
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
