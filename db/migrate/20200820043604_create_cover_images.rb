class CreateCoverImages < ActiveRecord::Migration[5.2]
  def change
    create_table :cover_images do |t|
      t.integer :post_id

      t.timestamps
    end
  end
end
