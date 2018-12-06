module RoomsHelper
	def new_title
		@room.new_record? ? "Crear Habitacion" : "Editar Habitacion"
	end
end
