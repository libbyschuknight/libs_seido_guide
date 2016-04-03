class CreateStances < ActiveRecord::Migration
  def change
    create_table :stances do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
