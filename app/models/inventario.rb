class Inventario < ActiveRecord::Base
	belongs_to :area
	has_one :foto, :dependent => :destroy
end
