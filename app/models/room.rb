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
	validates_presence_of :title, :description, :beds, :guests, :image_url
	validates_length_of :description, :maximum => 400, :allow_blank => false
	validates :beds, :guests, numericality: { only_integer: true, :greater_than_or_equal_to => 1}
end
