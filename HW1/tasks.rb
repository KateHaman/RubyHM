puts '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
array = [-11, -9, -7, -5, -3, -1, 0, 2, 4, 6, 8, 10]
(array.partition.with_index { |index| index.even? }).flatten
puts '-------------------------------------------------'
puts '2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
array = [-11, -9, -7, -5, -3, -1, 0, 2, 4, 6, 8, 10]
(array.partition.with_index { |index| index.odd? }).flatten
puts '-------------------------------------------------'
puts '3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
array = [0, 25]
array.index { |num| array[0] < num && num < array[-1] } || []
puts '-------------------------------------------------'
puts '4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
array = [0, 2, 3]
array.rindex { |num| array[0] < num && num < array[-1] } || []
puts '-------------------------------------------------'
puts '5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 2]
array.map.with_index { |element, index| (index != 0 && index != array.length-1) &&  element.even? ? element + array.first : element }
puts '-------------------------------------------------'
puts '6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 4]
array.map.with_index { |element, index| (index != 0 && index != array.length-1) &&  element.even? ? element + array.last : element }
puts '-------------------------------------------------'
puts '7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 4]
array.map.with_index { |element, index| (index != 0 && index != array.length-1) &&  element.odd? ? element + array.last : element }
puts '-------------------------------------------------'
puts '8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 4]
array.map.with_index { |element, index| (index != 0 && index != array.length-1) &&  element.odd? ? element + array.first : element }
puts '-------------------------------------------------'
puts '9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
array = [-20, 5, -3, 0, 11, -22]
array_min = array.min
array.each_index{|i| array[i] = array_min if array[i] > 0}
puts '-------------------------------------------------'
puts '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
array = [-20, 5, -3, 0, 11, -22]
array.map { |element| element.positive? ? array.max : element }
puts '-------------------------------------------------'
puts '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
array  = [-20, 5, -3, 0, 11, -22]
array.map { |element| element.negative? ? array.min : element }
puts '-------------------------------------------------'
puts '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
array = [-20, 5, -3, 0, 11, -22]
array_max = array.max
array.each_index{|i| array[i] = array_max if array[i] < 0}
puts '-------------------------------------------------'
puts '13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
array = [-20, 5, -3, 0, 11, -22]
array.rotate
puts '-------------------------------------------------'
puts '14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
array = [-20, 5, -3, 0, 11, -22]
array.rotate(-1)
puts '-------------------------------------------------'
puts '17. Дан целочисленный массив. Найти количество его локальных максимумов.'
arr = [-20, 5, -3, 0, 11, -22]
count = 0
for i in 1..(arr.count-2)
  count += 1 if arr[i] > arr[i-1] && arr[i] > arr[i+1]
end
count
puts '-------------------------------------------------'
puts '18. Дан целочисленный массив. Найти количество его локальных минимумов.'
array = [-20, 5, -3, 0, 11, -22]
count = 0
for i in 1..(arr.count-2)
  count += 1 if arr[i] < arr[i-1] && arr[i] < arr[i+1]
end
count
puts '-------------------------------------------------'
puts '19. Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
arr = [-20, 5, -3, 0, 11, -22]
maxs = []
for i in 1..(arr.count-2)
  maxs.push(arr[i]) if arr[i] > arr[i-1] && arr[i] > arr[i+1]
end
maxs.max
puts '-------------------------------------------------'
puts '20. Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
arr = [-20, 5, -3, 0, 11, -22]
mins = []
for i in 1..(arr.count-2)
    mins.push(arr[i]) if arr[i] < arr[i-1] && arr[i] < arr[i+1]
end
mins.min
puts '-------------------------------------------------'
puts '25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
array = [-20, 5, -3, 0, 11, -22]
array.map { |element| element.positive? ? [array[0], element] : element }.flatten!
puts '-------------------------------------------------'
puts '26. Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
array = [-20, 5, -3, 0, 11, -22]
array.map { |element| element.positive? ? [element, array[0]] : element }.flatten!
puts '-------------------------------------------------'
puts '27. Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'
array = [-20, 5, -3, 0, 11, -22]
array.map { |element| element.negative? ? [element, array[0]] : element }.flatten!
puts '-------------------------------------------------'
puts '28. Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
array = [-20, 5, -3, 0, 11, -22]
array.map { |element| element.negative? ? [array[0], element] : element }.flatten!
puts '-------------------------------------------------'
puts '29. Дан целочисленный массив. Упорядочить его по возрастанию.'
array = [5, 154, 65, -85, 0, -1111]
array.sort!
puts '-------------------------------------------------'
puts '30. Дан целочисленный массив. Упорядочить его по убыванию.'
array = [5, 154, 65, -85, 0, -1111]
array.sort! {|a,b| b <=> a}
puts '-------------------------------------------------'
puts '33. Дан целочисленный массив. Найти индекс минимального элемента'
array = [45, 15, 0, -855, 2]
array.index(array.min)
puts '-------------------------------------------------'
puts '34. Дан целочисленный массив. Найти индекс максимального элемента.'
array = [45, 15, 0, -855, 2]
array.index(array.max)
puts '-------------------------------------------------'
puts '35. Дан целочисленный массив. Найти индекс первого минимального элемента.'
array = [45, 15, 0, -855, 2]
array.index(array.min)
puts '-------------------------------------------------'
puts '36. Дан целочисленный массив. Найти индекс первого максимального элемента.'
array = [45, 15, 0, -855, 2]
array.index(array.max)
puts '-------------------------------------------------'
puts '37. Дан целочисленный массив. Найти индекс последнего минимального элемента.'
array = [45, 15, 0, -855, 2]
array.rindex(array.min)
puts '-------------------------------------------------'
puts '38. Дан целочисленный массив. Найти индекс последнего максимального элемента.'
array = [45, 15, 0, -855, 2]
array.rindex(array.max)
puts '-------------------------------------------------'
puts '39. Дан целочисленный массив. Найти количество минимальных элементов.'
array = [45, 15, 0, -855, 2]
array.count(array.min)
puts '-------------------------------------------------'
puts '40. Дан целочисленный массив. Найти количество максимальных элементов.'
array = [45, 15, 0, 29, -855, 2]
array.count(array.max)
puts '-------------------------------------------------'
puts '41. Дан целочисленный массив. Найти минимальный четный элемент.'
array = [33, -66, 23, -105, 1, 52]
(array.select {|n| n.even?}).min
puts '-------------------------------------------------'
puts '42. Дан целочисленный массив. Найти минимальный нечетный элемент.'
array = [33, -66, 23, -105, 1, 52]
array.select {|n| n.odd?}.min
puts '-------------------------------------------------'
puts '43. Дан целочисленный массив. Найти максимальный четный элемент.'
array = [33, -66, 23, -105, 1, 52]
array.select {|n| n.even?}.max
puts '-------------------------------------------------'
puts '44. Дан целочисленный массив. Найти максимальный нечетный элемент.'
array = [33, -66, 23, -105, 1, 52]
array.select {|n| n.odd?}.max
puts '-------------------------------------------------'
puts '45. Дан целочисленный массив. Найти минимальный положительный элемент.'
array = [33, -66, 23, -105, 1, 52]
array.select {|n| n > 0}.min
puts '-------------------------------------------------'
puts '46. Дан целочисленный массив. Найти максимальный отрицательный элемент.'
array = [33, -66, 23, -105, 1, 52]
array.select {|n| n < 0}.max
puts '-------------------------------------------------'
puts '47. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
array = [33, -66, 23, -105, 1, 52]
array[0...-1].min
puts '-------------------------------------------------'
puts '48. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
array = [33, -66, 23, -105, 1, 52]
array[1...4].max
puts '-------------------------------------------------'
puts '49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
array = [0, 1, 3, 4, -5, 5, 6]
array[0...array.index(array.min)].size
puts '-------------------------------------------------'
puts '50. Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
arr = [0, 1, 3, 4, -5, 5, 6]
arr_max = arr.max
count = 0
arr.each do |n|
  break if n == arr_max
  count += 1
end
count
puts '-------------------------------------------------'
puts '61. Дан целочисленный массив. Найти два наибольших элемента.'
array = [33, -66, 23, -105, 1, 52]
array.max(2)
puts '-------------------------------------------------'
puts '62. Дан целочисленный массив. Найти два наименьших элемента.'
array = [33, -66, 23, -105, 1, 52]
array.min(2)
puts '-------------------------------------------------'
puts '65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
array = [33, -66, 23, -105, 1, 52]
array.select {|n| n.even?} + array.select {|n| n.odd?}
puts '-------------------------------------------------'
puts '66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
array = [33, -66, 23, -105, 1, 52]
array.partition { |element| element.odd? }.flatten!
puts '-------------------------------------------------'
puts '79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.'
array = [-2, -3, 0, 2, 3]
array.each_index do |i|
  array[i] = array[i]**3 if array[i] > 0
  array[i] = array[i]**2 if array[i] < 0
end
puts '-------------------------------------------------'
puts '87. Дан целочисленный массив. Найти все четные элементы.'
array = [-3, -6, -11, 0, 58, 856, 57]
array.find_all(&:even?)
puts '-------------------------------------------------'
puts '88. Дан целочисленный массив. Найти количество четных элементов.'
array = [-3, -6, -11, 0, 58, 856, 57]
array.count {|element| element.even?}
puts '-------------------------------------------------'
puts '89. Дан целочисленный массив. Найти все нечетные элементы.'
array = [-3, -6, -11, 0, 58, 856, 57]
array.select {|element| element.odd?}
puts '-------------------------------------------------'
puts '90. Дан целочисленный массив. Найти количество нечетных элементов.'
array = [-3, -6, -11, 0, 58, 856, 57]
array.count {|element| element.odd?}
puts '--------------------------------------------------'