class AddPricePerNigthToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :price_per_nigth, :decimal
  end
end
