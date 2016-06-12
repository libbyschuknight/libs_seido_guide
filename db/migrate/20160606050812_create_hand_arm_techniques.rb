class CreateHandArmTechniques < ActiveRecord::Migration
  def change
    create_table :hand_arm_techniques do |t|
      t.string :japanese_name
      t.string :english_name
      t.string :description
      t.string :offensive_defensive
      t.string :type_technique
      t.attachment :image

      t.timestamps null: false
    end
  end
end
