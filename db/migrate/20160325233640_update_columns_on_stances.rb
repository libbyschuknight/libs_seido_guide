class UpdateColumnsOnStances < ActiveRecord::Migration
  def change
    remove_column :stances, :name, :string
    add_column :stances, :japanese_name, :string
    add_column :stances, :english_name, :string
  end
end
