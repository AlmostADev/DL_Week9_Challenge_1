# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la
# siguiente estructura:

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego
# generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven
# está ladrando!"

class Dog
    attr_reader :nombre, :raza, :color
    def initialize args
        args.each do |k,v|
        instance_variable_set("@#{k}", v) unless v.nil?
        end
    end
end

dog = Dog.new(propiedades)

print dog