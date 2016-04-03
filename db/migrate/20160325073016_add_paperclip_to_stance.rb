class AddPaperclipToStance < ActiveRecord::Migration
  def change
    add_attachment :stances, :image
  end
end
