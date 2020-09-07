class AddDeletedAtToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :deleted_at, :datetime
  end
end
