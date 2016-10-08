class AddpricePerNightToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :price_per_night, :decimal
  end
end
