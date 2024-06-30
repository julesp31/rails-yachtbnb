class CreateYachts < ActiveRecord::Migration[7.1]
  def change
    create_table :yachts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :price
      t.string :location

      t.timestamps
    end
  end
end
