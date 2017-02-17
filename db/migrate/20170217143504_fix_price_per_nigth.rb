class FixPricePerNigth < ActiveRecord::Migration
  def change
  	rename_column :rooms, :price_per_nigth, :price_per_night
  end
end
