array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336] 
puts узнать количество элементов в массиве
array.size
puts '-------------------------------------------'
puts перевернуть массив
array.reverse
puts '-------------------------------------------'
puts найти наибольшее число
array.max
puts '-------------------------------------------'
puts найти наименьшее число
array.min
puts '-------------------------------------------'
puts отсортировать от меньшего к большему
array.sort
puts '-------------------------------------------'
puts отсортировать от большего к меньшему
array.sort { |a, b| b <=> a}
puts '-------------------------------------------'
puts удалить все нечетные числа
array.reject { |element| element.odd? }
puts '-------------------------------------------'
puts оставить только те числа, которые без остатка делятся на 3
array.select { |element| element % 3 == 0 }
puts '-------------------------------------------'
puts удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
array.uniq
puts '-------------------------------------------'
puts разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
array.map{ |element| (element.to_f) / 10 }
puts '-------------------------------------------'
puts получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
array1 = array.select { |element| element <= 26 && element >= 1}
array2 = ('A'..'Z').to_a
array3 = array1.map { |i| array2[i-1] }
puts '-------------------------------------------'
puts поменять местами минимальный и максимальный элементы массива
array1 = array.clone
array_min = array1.each_with_index.min[1]
array_max = array1.each_with_index.max[1]
array1[array_min], array1[array_max] = array1[array_max], array1[array_min]
puts '-------------------------------------------'
puts найти элементы, которые находятся перед минимальным числом в массиве
array[0...array.rindex(array.min)]
puts '-------------------------------------------'
puts необходимо найти три наименьших элемента
array.min(3)
puts '-------------------------------------------'