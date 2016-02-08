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


validates :title,
			presence: true


validates :description, 
		  presence: true,
		  length: {maximum: 400}
		   


validates :beds, presence: {message: "bed no puede estar en blanco"},
		  numericality: { only_integer: true, message: "bed no es un numero"}
			


validates :guests, presence: {message: "guest no puede estar en blanco"},
		  numericality: { only_integer: true, message: "guests no es un numero" }
			

validates :image_url, presence: {message: "El URL de la imagen no puede estar en blanco"}
			

end
