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
	validates :description, length: {maximum: 400}
	validates :beds, numericality: { only_integer: true}
	validates :guests, numericality: { only_integer: true}
end
