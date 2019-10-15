module RoomsHelper
	def form_group
		@room.new_record? ? "publicar habitacion" : "Modificar Habitacion"
	end
end
