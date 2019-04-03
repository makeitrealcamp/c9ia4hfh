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
  validates :id, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { maximum: 2 }
  validates :beds, presence: true, numericality: { only_integer: true }
  validates :guests, presence: true, numericality: { only_integer: true }     
  validates :created_at, presence: true
  validates :updated_at, presence: true
  validates :image_url, presence: true
end
