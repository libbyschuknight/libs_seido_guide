class HandArmTechniquesController < ApplicationController

  def index
    @hand_arm_techniques = HandArmTechnique.all
  end

  def show
    @hand_arm_technique = HandArmTechnique.find(params[:id])
  end

  def new
    @hand_arm_technique = HandArmTechnique.new
  end

  def edit
    @hand_arm_technique = HandArmTechnique.find(params[:id])
  end

  def create
    @hand_arm_technique = HandArmTechnique.new(hand_arm_technique_params)

    if @hand_arm_technique.save
      redirect_to @hand_arm_technique
    else
      redirect_to(new_hand_arm_technique_path)
    end
  end

  def update
    @hand_arm_technique = HandArmTechnique.find(params[:id])

    if @hand_arm_technique.update(hand_arm_technique_params)
      redirect_to @hand_arm_technique
    else
      render "edit"
    end
  end

  def destroy
    @hand_arm_technique = HandArmTechnique.find(params[:id])
    @hand_arm_technique.destroy

    redirect_to hand_arm_techniques_path
  end

  private

  def hand_arm_technique_params
    params.require(:hand_arm_technique).permit(
      :japanese_name,
      :english_name,
      :description,
      :offensive_defensive,
      :type_technique,
      :image
    )
  end

end
