class AddPricepernightToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :price_per_night, :decimal, :precision => 6, :scale => 2
  end
end
