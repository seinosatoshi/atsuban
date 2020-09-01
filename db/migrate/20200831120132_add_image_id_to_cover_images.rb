class AddImageIdToCoverImages < ActiveRecord::Migration[5.2]
  def change
    add_column :cover_images, :image_id, :string
  end
end
