# Corrige el siguiente codigo para instanciar el objeto y generar la
# salida de manera correcta.

# Class Car
class Car
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end
end

car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
