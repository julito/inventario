module InventariosHelper
  def foto_for(inventario, size = :medium)
    if inventario.foto 
      foto_image = inventario.foto.public_filename(size) 
      link_to image_tag(foto_image), inventario.foto.public_filename
    else
      image_tag("blank-foto-#{size}.png" )
    end 
  end
end
