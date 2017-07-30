class RemoveUsersFromModels < ActiveRecord::Migration
  def change
    remove_column :feet_leg_weapons, :user_id, :integer
    remove_column :hand_arm_techniques, :user_id, :integer
    remove_column :hand_arm_weapons, :user_id, :integer
    remove_column :stances, :user_id, :integer
  end
end
