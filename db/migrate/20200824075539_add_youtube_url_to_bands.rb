class AddYoutubeUrlToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :youtube_url, :string
  end
end
