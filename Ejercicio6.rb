# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los productos que
# ofrece una tienda junto con los precios de las tallas L, M, S y XS.

# El siguiente código define la clase Product y además realiza la lectura del archivo.

class Product
    def initialize(name, large, medium, small, xsmall)
        @name = name
        @large = large
        @medium = medium
        @small = small
        @xsmall = xsmall
    end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end

puts products_list

# Ejercicio 6: Objetos y archivos.
# Se pide:
# Optimizar el código implementando el operador splat al momento de instanciar los
# productos
# Generar un método que permita calcular el promedio de precio por producto.