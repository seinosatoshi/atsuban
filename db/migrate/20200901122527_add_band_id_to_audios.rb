class AddBandIdToAudios < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :band_id, :integer
  end
end
