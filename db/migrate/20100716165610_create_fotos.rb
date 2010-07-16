class CreateFotos < ActiveRecord::Migration
  def self.up
    create_table :fotos do |t|
      t.integer :inventario_id, :parent_id, :size, :width, :height
      t.string  :content_type, :filename, :thumbnail 
      t.timestamps
    end
  end

  def self.down
    drop_table :fotos
  end
end
