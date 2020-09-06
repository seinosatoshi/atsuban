class CreateAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :audios do |t|
    	t.string :name
    	t.integer :post_id
    	t.string :file
    	t.integer :band_id

      t.timestamps
    end
  end
end
