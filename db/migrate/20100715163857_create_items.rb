class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :descripcion
      t.integer :grupo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
