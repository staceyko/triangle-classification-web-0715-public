class Triangle

    attr_accessor :kind

    def initialize(side1, side2, side3)
            @side1 = side1
            @side2 = side2
            @side3 = side3
    end

    def kind
        if @side1 == 0 && @side2 == 0 && @side3 == 0
            raise TriangleError
        elsif @side1 < 0 || @side2 < 0 || @side3 <0 
            raise TriangleError
        elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
            raise TriangleError 
        elsif @side1 == @side2 && @side2 == @side3 && @side1 == @side3
            @kind = :equilateral
        elsif @side1 == @side3 || @side2 == @side3 || @side1 == @side2
            @kind = :isosceles
        elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
            @kind = :scalene
        end
    end
end


class TriangleError<Exception
end