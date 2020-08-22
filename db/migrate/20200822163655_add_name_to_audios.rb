class AddNameToAudios < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :name, :string
  end
end
