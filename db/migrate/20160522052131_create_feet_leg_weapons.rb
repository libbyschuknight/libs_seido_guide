class CreateFeetLegWeapons < ActiveRecord::Migration
  def change
    create_table :feet_leg_weapons do |t|
      t.string :japanese_name
      t.string :english_name
      t.string :description
      t.attachment :image
      
      t.timestamps null: false
    end
  end
end
