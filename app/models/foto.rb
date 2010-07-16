class Foto < ActiveRecord::Base
	belongs_to :inventario
  
  has_attachment :content_type => :image, 
                 :storage      => :file_system, 
                 :max_size     => 2500.kilobytes,
                 :resize_to    => '384x256>',
                 :thumbnails   => { 
                   :large =>  '96x96>',
                   :medium => '64x64>',
                   :small =>  '48x48>' 
                 }

  validates_as_attachment
end


=begin

  validate :attachment_valid?  

  def attachment_valid?
    unless self.filename
      errors.add_to_base("No foto image file was selected") 
    end
    
    content_type = attachment_options[:content_type]
    unless content_type.nil? || content_type.include?(self.content_type)
      errors.add_to_base("Foto image content type must an image")
    end
    
    size = attachment_options[:size]
    unless size.nil? || size.include?(self.size)
      errors.add_to_base("Foto image must be 500-KB or less")
    end
  end

=end
