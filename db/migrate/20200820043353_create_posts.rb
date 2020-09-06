class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :audio_id
      t.integer :band_id

      t.timestamps
    end
  end
end
