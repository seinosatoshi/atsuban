class RemoveKanaFromBands < ActiveRecord::Migration[5.2]
  def change
    remove_column :bands, :name_kana, :string
    remove_column :bands, :rep_name_kana, :string
    remove_column :bands, :is_left, :boolean
  end
end
