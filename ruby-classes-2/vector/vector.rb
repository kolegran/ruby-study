class Vector
  attr_accessor :x
  attr_accessor :y
  attr_accessor :z

  def self.vector_distance(vector_1, vector_2)
    Math.sqrt((vector_1.x - vector_2.x)**2 + (vector_1.y-vector_2.y)**2 + (vector_1.z-vector_2.z)**2)
  end

  def initialize(x = 0, y = 0, z = 0)
    @x = x
    @y = y
    @z = z
  end

  def add(vector)
    [(@x + vector.x), (@y + vector.y), (@z + vector.z)]
  end

  def subtract(vector)
    [(@x - vector.x), (@y - vector.y), (@z - vector.z)]
  end

  def scalar_product(vector)
    @x * vector.x + @y * vector.y + @z * vector.z
  end

  def vector_product(vector)
    y_z = @y * vector.z - @z * vector.y
    x_z = @z * vector.x - @x * vector.z
    x_y = @x * vector.y - @y * vector.x

    [y_z, x_y, x_y]
  end

  def vector_length
    Math.sqrt(@x * @x + @y * @y + @z * @z)
  end
end
