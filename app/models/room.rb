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
	validates :description, length: { in: 1..400 }, presence: true
	validates :image_url, presence: true
	validates :beds, presence: true, numericality: { only_integer: true }
	validates :guests, presence: true, numericality: { only_integer: true }
end
