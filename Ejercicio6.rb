# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los productos que
# ofrece una tienda junto con los precios de las tallas L, M, S y XS.

# El siguiente código define la clase Product y además realiza la lectura del archivo.

class Product
    attr_reader :name
    def initialize(name, large, medium, small, xsmall)
        @name = name
        @large = large.to_i
        @medium = medium.to_i
        @small = small.to_i
        @xsmall = xsmall.to_i
    end
    def average
        (@large + @medium + @small + @xsmall) / 4
    end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

# Optimizar el código implementando el operador splat al momento de instanciar los
# productos
data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end

# Generar un método que permita calcular el promedio de precio por producto.
products_list.each do |product|
    puts "#{product.name} : #{product.average}"
end