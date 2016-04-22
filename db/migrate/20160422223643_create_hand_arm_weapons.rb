class CreateHandArmWeapons < ActiveRecord::Migration
  def change
    create_table :hand_arm_weapons do |t|
      t.string :japanese_name
      t.string :english_name
      t.string :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
