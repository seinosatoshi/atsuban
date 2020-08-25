class AddTipsToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :tips, :text
  end
end
