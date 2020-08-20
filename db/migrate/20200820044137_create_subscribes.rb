class CreateSubscribes < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribes do |t|
      t.integer :band_id
      t.integer :user_id

      t.timestamps
    end
  end
end
