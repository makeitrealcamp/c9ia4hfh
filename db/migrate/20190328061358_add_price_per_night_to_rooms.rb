class AddPricePerNightToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :price_per_night, :decimal
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
