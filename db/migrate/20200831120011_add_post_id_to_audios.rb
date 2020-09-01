class AddPostIdToAudios < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :post_id, :integer
  end
end
