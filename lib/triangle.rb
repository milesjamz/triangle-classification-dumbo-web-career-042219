class Triangle

attr_reader :one, :two, :three

	def initialize(one, two, three)
	@one = one
	@two = two
	@three = three
	end

	def kind
	test_triangle
		if one == two && two == three && one == three
		:equilateral
	elsif 
		one != two && @two != @three && one != three
		:scalene
	elsif
		one == two || two == three || one == three
		:isosceles
	end
end

	def test_triangle
	test_tri = [one, two, three]
	sorted = test_tri.sort
	if (sorted[0] + sorted[1]) <= sorted[2]
		raise TriangleError
	end
	sorted.each do |side|
		if side == 0
			raise TriangleError
		end
	end
end

  class TriangleError < StandardError
  	"Your triangle is illegal!"
  end


end
