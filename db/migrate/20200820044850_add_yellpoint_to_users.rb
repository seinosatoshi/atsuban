class AddYellpointToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :yellpoint, :string
  end
end
