# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
	 validates :title, :description, :beds, :guests, :image_url, :price_per_night, presence: true 
   validates :beds, :guests, :price_per_night, numericality: true
   validates :description, length: { maximum: 400 }
end


