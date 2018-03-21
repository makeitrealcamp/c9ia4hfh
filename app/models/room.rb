# == Schema Information
#
# Table name: rooms
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  beds            :integer
#  guests          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image_url       :string
#  price_per_night :decimal(, )
#

class Room < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true, length: {maximum: 400}
	validates :beds, presence: true, numericality: {only_integer: true }
	validates :guests, presence: true, numericality: {only_integer: true }
	validates :image_url, presence: true
end
