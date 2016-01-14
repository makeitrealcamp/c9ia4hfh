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
  validates :description, presence: true
  validates :beds, presence: true, numericality: true
  validates :guests, presence: true, numericality: true
  validates :image_url, presence: true
  validates :title, :presence => {:message => "Usted debe ingresar un título"}, length: {minimum: 1, maximum: 400, :message => "El título debe tener entre 1 y 400 caracteres"}

end
