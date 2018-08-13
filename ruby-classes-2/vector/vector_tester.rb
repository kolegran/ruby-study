require_relative 'vector'

class VectorTester < Vector
  def self.main
    v_1 = Vector.new(1, 1, 1)
    v_2 = Vector.new(2, 2, 2)

    puts v_1.vector_length

    puts v_1.add(v_2).join(', ')
    puts v_1.subtract(v_2).join(', ')

    puts v_1.scalar_product(v_2)
    puts v_1.vector_product(v_2).join(', ')
   
    puts Vector.vector_distance(v_1, v_2)

  end
end

VectorTester.main
