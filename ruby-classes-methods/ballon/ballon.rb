class Ballon
  AIR_DENSITY = 1.293
  M_PI = 3.141592

  attr_accessor :volume

  def initialize(volume = 0.0)
    @volume = volume
  end

  def surface_area
    4*M_PI * get_radius**2
  end

  def get_radius
    ((3*@volume) / (4*M_PI))**(1.0/3.0)
  end

  def add_air_mass(mass)
    current_mass = @volume * AIR_DENSITY
    current_mass += mass
    get_current_volume(current_mass)
  end
  
private
  def get_current_volume(mass)
    @volume = mass / AIR_DENSITY
  end
end
