class CreateInventarios < ActiveRecord::Migration
  def self.up
    create_table :inventarios do |t|
      t.integer :area_id
      t.string :codigo_old
      t.string :codigo_new
      t.integer :item_id
      t.integer :marca_id
      t.integer :color_id
      t.string :modelo
      t.string :serie
      t.integer :estado_id
      t.date :fecha_adq
      t.decimal :costo
      t.date :fecha_valoracion
      t.decimal :valoracion_inicial
      t.decimal :valoracion_actual
      t.string :observaciones

      t.timestamps
    end
  end

  def self.down
    drop_table :inventarios
  end
end
