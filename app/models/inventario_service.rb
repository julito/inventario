class InventarioService
  
  attr_reader :inventario, :foto
  
  def initialize(inventario, foto)
    @inventario = inventario
    @foto = foto
  end
  
  def save
    return false unless valid?
    begin
	    Inventario.transaction do
        if @foto.new_record?
          @inventario.foto.destroy if @inventario.foto
          @foto.inventario = @inventario
          @foto.save!
        end
        @inventario.save!
        true
      end
    rescue
      false
    end
  end

  def valid?
    @inventario.valid? && @foto.valid?
  end
  
  
  
  def update_attributes(inventario_attributes, foto_file)
    @inventario.attributes = inventario_attributes
    unless foto_file.blank?
      @foto = Foto.new(:uploaded_data => foto_file)
    end
    save
  end
  
  

end

