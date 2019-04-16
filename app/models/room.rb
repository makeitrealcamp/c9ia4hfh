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
  validates :beds, numericality: true
  validates :beds, numericality: { only_integer: true }
  validates :guests, numericality: true
  validates :guests, numericality: { only_integer: true }
  validates :url, presence: true
  validates :description, :presence => true,
                   :length => { :maximum => 400 }
end
