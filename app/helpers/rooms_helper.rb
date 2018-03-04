module RoomsHelper
	def form_title
		@room.new_record? ? "Publicar Habitación" : "Modificar Habitación"
	end
end
