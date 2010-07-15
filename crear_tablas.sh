ruby script/generate scaffold  inventario area_id:integer codigo_old:string codigo_new:string item_id:integer marca_id:integer color_id:integer modelo:string serie:string estado_id:integer fecha_adq:date costo:decimal fecha_valoracion:date valoracion_inicial:decimal valoracion_actual:decimal observaciones:string
ruby script/generate scaffold  area descripcion:string
ruby script/generate scaffold  item descripcion:string grupo_id:integer
ruby script/generate scaffold  marca descripcion:string
ruby script/generate scaffold  estado descripcion:string
ruby script/generate scaffold  color descripcion:string
ruby script/generate scaffold  grupo descripcion:string
