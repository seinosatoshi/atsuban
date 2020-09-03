class AddYelledAtToYells < ActiveRecord::Migration[5.2]
  def change
    add_column :yells, :yelled_at, :datetime
  end
end
