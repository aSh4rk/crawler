class Cell
	def getCoords
	end

	def is_empty?
	end

	def render
		" "
	end
end

class Floor < Cell
	def render
		"•"
	end
end

class VWall < Cell
	def render
		"‖"
	end
end

class HWall < Cell
	def render
		"═"
	end
end


map = [
  HWall.new, # cell_h_wall
  VWall.new, # cell_v_wall
  Cell.new, # cell_empty
  Floor.new, # cell_floor
]

puts map
  .map { |c| c.render}
  .join('')