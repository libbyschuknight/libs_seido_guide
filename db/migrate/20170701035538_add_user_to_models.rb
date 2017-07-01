class AddUserToModels < ActiveRecord::Migration
  def change
    add_column :feet_leg_weapons, :user_id, :integer
    add_column :hand_arm_techniques, :user_id, :integer
    add_column :hand_arm_weapons, :user_id, :integer
    add_column :stances, :user_id, :integer
  end
end
