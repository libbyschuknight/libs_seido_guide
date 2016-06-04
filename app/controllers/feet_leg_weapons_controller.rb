class FeetLegWeaponsController < ApplicationController

  def index
    @feet_leg_weapons = FeetLegWeapon.all
  end

  def show
    @feet_leg_weapon = FeetLegWeapon.find(params[:id])
  end

  def new
    @feet_leg_weapon = FeetLegWeapon.new
  end

  def edit
    @feet_leg_weapon = FeetLegWeapon.find(params[:id])
  end

  def create
    @feet_leg_weapon = FeetLegWeapon.new(feet_leg_weapon_params)

    if @feet_leg_weapon.save
      redirect_to @feet_leg_weapon
    else
      redirect_to(new_feet_leg_weapon_path)
    end
  end

  def update
    @feet_leg_weapon = FeetLegWeapon.find(params[:id])

    if @feet_leg_weapon.update(feet_leg_weapon_params)
      redirect_to @feet_leg_weapon
    else
      render "edit"
    end
  end

  def destroy
    @feet_leg_weapon = FeetLegWeapon.find(params[:id])
    @feet_leg_weapon.destroy

    redirect_to feet_leg_weapons_path
  end

  private

  def feet_leg_weapon_params
    params.require(:feet_leg_weapon).permit(
      :japanese_name,
      :english_name,
      :description,
      :image
    )
  end

end
