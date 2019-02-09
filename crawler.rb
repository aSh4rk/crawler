class Cell

	def initialize
		@viewables = []
	end

	def getCoords
	end

	def is_empty?
		@viewables.empty?
	end

	def render
		if is_empty?
			" "
		else	
			@viewables.last.render
		end
	end

	def put(viewable)
		@viewables.push(viewable)
	end
end

class Floor
	def render
		"•"
	end
end

class VWall
	def render
		"‖"
	end
end

class HWall
	def render
		"═"
	end
end

empty_cell = Cell.new
v_wall_cell = Cell.new
h_wall_cell = Cell.new
floor_cell = Cell.new

h_wall_cell.put(HWall.new)
v_wall_cell.put(VWall.new)
floor_cell.put(Floor.new)

map = [
  h_wall_cell, # cell_h_wall
  v_wall_cell, # cell_v_wall
  empty_cell, # cell_empty
  floor_cell, # cell_floor
]

puts map
  .map { |c| c.render }
  .join('')