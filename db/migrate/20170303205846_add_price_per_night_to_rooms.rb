class AddPricePerNightToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :Price_per_night, :decimal
  end
end
