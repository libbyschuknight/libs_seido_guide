class CreateStances < ActiveRecord::Migration
  def change
    create_table :stances do |t|

      t.timestamps null: false
    end
  end
end
