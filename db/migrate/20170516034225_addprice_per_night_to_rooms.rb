class AddpricePerNightToRooms < ActiveRecord::Migration[5.0]
  def change
  	add_column price_per_night:decimal
  end
end
