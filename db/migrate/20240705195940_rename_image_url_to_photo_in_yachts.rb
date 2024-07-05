class RenameImageUrlToPhotoInYachts < ActiveRecord::Migration[7.1]
  def change
    rename_column :yachts, :image_url, :photo
  end
end
