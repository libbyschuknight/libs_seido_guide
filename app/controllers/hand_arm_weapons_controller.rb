class HandArmWeaponsController < ApplicationController

  def index
    @hand_arm_weapons = HandArmWeapon.all
  end

  def show
    @hand_arm_weapon = HandArmWeapon.find(params[:id])
  end

  def new
    @hand_arm_weapon = HandArmWeapon.new
  end

  def edit
    @hand_arm_weapon = HandArmWeapon.find(params[:id])
  end

  def create
    @hand_arm_weapon = HandArmWeapon.new(hand_arm_weapon_params)

    if @hand_arm_weapon.save
      redirect_to @hand_arm_weapon
    else
      redirect_to(new_hand_arm_weapon_path)
    end
  end

  def update
    @hand_arm_weapon = HandArmWeapon.find(params[:id])

    if @hand_arm_weapon.update(hand_arm_weapon_params)
      redirect_to @hand_arm_weapon
    else
      render "edit"
    end
  end

  def destroy
    @hand_arm_weapon = HandArmWeapon.find(params[:id])
    @hand_arm_weapon.destroy

    redirect_to hand_arm_weapons_path
  end

  private

  def hand_arm_weapon_params
    params.require(:hand_arm_weapon).permit(
      :japanese_name,
      :english_name,
      :description,
      :image
    )
  end

end
