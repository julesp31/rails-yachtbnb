class AddDetailsToBookingsAndYachts < ActiveRecord::Migration[7.1]
  def change
    # Adding columns to bookings table
    add_column :bookings, :total_price, :decimal
    add_column :bookings, :number_of_guests, :integer
    add_column :bookings, :captain_needed, :boolean, default: false

    # Adding columns to yachts table
    add_column :yachts, :is_available, :boolean, default: true
    add_column :yachts, :has_captain, :boolean, default: false
    add_column :yachts, :capacity, :integer
  end
end
