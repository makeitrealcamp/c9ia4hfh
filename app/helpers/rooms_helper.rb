module RoomsHelper
  def edDel
    @room.new_record? ? "Publicar" : "Modificar"
  end
end
