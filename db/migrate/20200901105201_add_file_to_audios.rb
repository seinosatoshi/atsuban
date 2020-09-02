class AddFileToAudios < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :file, :string
  end
end
