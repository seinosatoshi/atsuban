class RemoveYelledAtFromYells < ActiveRecord::Migration[5.2]
  def change
    remove_column :yells, :yelled_at, :datetime
  end
end
