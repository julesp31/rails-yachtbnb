class AddImageUrlToYachts < ActiveRecord::Migration[7.1]
  def change
    add_column :yachts, :image_url, :string
  end
end
