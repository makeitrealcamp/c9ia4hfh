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
	validates :title, presence: true
	validates :description, presence: true
	validates :beds, presence: true
	validates :guests, presence: true
	validates :image_url, presence: true
	validates_length_of :description, :maximum => 400
	validates :beds, numericality: { only_integer: true }
	validates :guests, numericality: { only_integer: true }
	validates :price_per_night, numericality: { only_decimal: true }

end
