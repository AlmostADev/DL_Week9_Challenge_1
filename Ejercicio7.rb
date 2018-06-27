# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catalogo que no incluya
# el ultimo precio correspondiente a cada producto debido a
# que ya no comercializa productos de talla XS.

# Se pide generar un metodo que reciba como argumento los
# datos del archivo catalogo.txt y luego imprima el nuevo
# catalogo solicitado en un archivo llamado nuevo_catalogo.txt

# Class Product
class Product
  attr_reader :product, :prices
  def initialize(product, prices)
    @product = product
    @prices = prices.map(&:to_i)
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1..3])
end

file2 = File.open('nuevo_catalogo.txt', 'w')
  products_list.each do |product|
    file2.puts "#{product.product} : #{product.prices}"
  end
file2.close
