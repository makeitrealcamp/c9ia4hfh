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
			presence: { message: "falta el titulo" }


validates :description, 
		  presence: { message: "falta la descripcion" },
		  length: {maximum: 400, message: "la descripción es muy larga"}
		   


validates :beds, presence: true, numericality: { only_integer: true, message: "bed no es un numero"}
			#message: ''


validates :guests, presence: true, numericality: { only_integer: true, message: "guests no es un numero" }
			#message: ''

validates :image_url, presence: true
			#message: ''

end
