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
  validates :title, :description, :beds, :guests, presence: true
  validates :beds, :guests, numericality: {only_integer: true}
  validates :description, length: {maximum: 400}
end
