require_relative 'ballon'

class BallonTester
  def self.ballon_parameters(ballon)
    puts ballon.volume
    puts ballon.get_radius
    puts ballon.surface_area
  end

  def self.main
    ballon = Ballon.new(100)

    ballon_parameters(ballon)
    ballon.add_air_mass(0.1)
    ballon_parameters(ballon)
  end
end

BallonTester.main
