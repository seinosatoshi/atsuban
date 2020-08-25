class AddReceiverIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :receiver_id, :integer
  end
end
