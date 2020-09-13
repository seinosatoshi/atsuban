class RemovePostIdFromAudios < ActiveRecord::Migration[5.2]
  def change
    remove_column :audios, :post_id, :integer
  end
end
