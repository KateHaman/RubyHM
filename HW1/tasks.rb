p '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p array = [-11, -9, -7, -5, -3, -1, 0, 2, 4, 6, 8, 10]
p array.partition(&:even?).flatten
p '-------------------------------------------------'
p '2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p array = [-11, 88, 56, -9, -7, -5, -3, 30, -1, 0, 2, 4, 6, 8, 10]
p array.partition(&:odd?).flatten
p '-------------------------------------------------'
p '3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p array = [0, 25]
p array.index { |num| array[0] < num && num < array[-1] } || []
p '-------------------------------------------------'
p '4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p array = [0, 2, 3]
p array.rindex { |num| array[0] < num && num < array[-1] } || []
p '-------------------------------------------------'
p '5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
p array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 2]
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.even? ? element + array.first : element
end
p array2
p '-------------------------------------------------'
p '6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 4]
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.even? ? element + array.last : element
end
p array2
p '-------------------------------------------------'
p '7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
p array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 4]
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.odd? ? element + array.last : element
end
p array2
p '-------------------------------------------------'
p '8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p array = [2, 2, 2, 3, 4, -12, 5, 6, 7, 4]
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.odd? ? element + array.first : element
end
p array2
p '-------------------------------------------------'
p '9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p array = [-20, 5, -3, 0, 11, -22]
array_min = array.min
array2 = array.each_index { |i| array[i] = array_min if array[i].positive? }
p array2
p '-------------------------------------------------'
p '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p array = [-20, 5, -3, 0, 11, -22]
p array.map { |element| element.positive? ? array.max : element }
p '-------------------------------------------------'
p '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p array = [-20, 5, -3, 0, 11, -22]
p array.map { |element| element.negative? ? array.min : element }
p '-------------------------------------------------'
p '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p array = [-20, 5, -3, 0, 11, -22]
array_max = array.max
array2 = array.each_index { |i| array[i] = array_max if array[i].negative? }
p array2
p '-------------------------------------------------'
p '13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
p array = [-20, 5, -3, 0, 11, -22]
p array.rotate
p '-------------------------------------------------'
p '14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
p array = [-20, 5, -3, 0, 11, -22]
p array.rotate(-1)
p '-------------------------------------------------'
p '17. Дан целочисленный массив. Найти количество его локальных максимумов.'
p arr = [-20, 5, -3, 0, 11, -22]
count = 0
(1..(arr.count - 2)).each do |i|
  count += 1 if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]
end
p count
p '-------------------------------------------------'
p '18. Дан целочисленный массив. Найти количество его локальных минимумов.'
p arr = [-20, 5, -3, 0, 11, -22]
count = 0
(1..(arr.count - 2)).each do |i|
  count += 1 if arr[i] < arr[i - 1] && arr[i] < arr[i + 1]
end
p count
p '-------------------------------------------------'
p '19. Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
p arr = [-20, 5, -3, 0, 11, -22]
maxs = []
(1..(arr.count - 2)).each do |i|
  maxs.push(arr[i]) if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]
end
p maxs.max
p '-------------------------------------------------'
p '20. Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
p arr = [-20, 5, -3, 0, 11, -22]
mins = []
(1..(arr.count - 2)).each do |i|
  mins.push(arr[i]) if arr[i] < arr[i - 1] && arr[i] < arr[i + 1]
end
p mins.min
p '-------------------------------------------------'
p puts '25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
p array = [-20, 5, -3, 0, 11, -22]
p array.map { |element| element.positive? ? [array[0], element] : element }.flatten!
p '-------------------------------------------------'
p '26. Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
p array = [-20, 5, -3, 0, 11, -22]
p array.map { |element| element.positive? ? [element, array[0]] : element }.flatten!
p '-------------------------------------------------'
p '27. Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'
p array = [-20, 5, -3, 0, 11, -22]
p array.map { |element| element.negative? ? [element, array[0]] : element }.flatten!
p '-------------------------------------------------'
p '28. Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
p array = [-20, 5, -3, 0, 11, -22]
p array.map { |element| element.negative? ? [array[0], element] : element }.flatten!
p '-------------------------------------------------'
p '29. Дан целочисленный массив. Упорядочить его по возрастанию.'
p array = [5, 154, 65, -85, 0, -1111]
p array.sort!
p '-------------------------------------------------'
p '30. Дан целочисленный массив. Упорядочить его по убыванию.'
p array = [5, 154, 65, -85, 0, -1111]
p array.sort! { |a, b| b <=> a }
p '-------------------------------------------------'
p '33. Дан целочисленный массив. Найти индекс минимального элемента'
p array = [45, 15, -855, 0, -855, 2]
a = array.min
p array.to_enum.with_index.select { |e, _| e == a }.map(&:last)
p '-------------------------------------------------'
p '34. Дан целочисленный массив. Найти индекс максимального элемента.'
p array = [45, 15, 45, 0, -855, 2]
b = array.max
p array.to_enum.with_index.select { |e, _| e == b }.map(&:last)
p '-------------------------------------------------'
p '35. Дан целочисленный массив. Найти индекс первого минимального элемента.'
p array = [45, 15, 0, -855, 2]
p array.index(array.min)
p '-------------------------------------------------'
p '36. Дан целочисленный массив. Найти индекс первого максимального элемента.'
p array = [45, 15, 0, -855, 2]
p array.index(array.max)
p '-------------------------------------------------'
p '37. Дан целочисленный массив. Найти индекс последнего минимального элемента.'
p array = [45, 15, 0, -855, 2]
p array.rindex(array.min)
p '-------------------------------------------------'
p '38. Дан целочисленный массив. Найти индекс последнего максимального элемента.'
p array = [45, 15, 0, -855, 2]
p array.rindex(array.max)
p '-------------------------------------------------'
p '39. Дан целочисленный массив. Найти количество минимальных элементов.'
p array = [45, 15, 0, -855, -855, 2]
p array.count(array.min)
p '-------------------------------------------------'
p '40. Дан целочисленный массив. Найти количество максимальных элементов.'
p array = [45, 15, 0, 45, 29, -855, 2]
p array.count(array.max)
p '-------------------------------------------------'
p '41. Дан целочисленный массив. Найти минимальный четный элемент.'
p array = [33, -66, 23, -105, 1, 52]
p array.select(&:even?).min
p '-------------------------------------------------'
p '42. Дан целочисленный массив. Найти минимальный нечетный элемент.'
p array = [33, -66, 23, -105, 1, 52]
p array.select(&:odd?).min
p '-------------------------------------------------'
p '43. Дан целочисленный массив. Найти максимальный четный элемент.'
p array = [33, -66, 23, -105, 1, 52]
p array.select(&:even?).max
p '-------------------------------------------------'
p '44. Дан целочисленный массив. Найти максимальный нечетный элемент.'
p array = [33, -66, 23, -105, 1, 52]
p array.select(&:odd?).max
p '-------------------------------------------------'
p '45. Дан целочисленный массив. Найти минимальный положительный элемент.'
p array = [33, -66, 23, -105, 1, 52]
p array.select(&:positive?).min
p '-------------------------------------------------'
p '46. Дан целочисленный массив. Найти максимальный отрицательный элемент.'
p array = [33, -66, 23, -105, 1, 52]
p array.select(&:negative?).max
p '-------------------------------------------------'
p '47. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
p array = [33, -66, 23, -105, 1, 52]
p array[0...-1].min
p '-------------------------------------------------'
p '48. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
p array = [33, -66, 23, -105, 1, 52]
p array[1...4].max
p '-------------------------------------------------'
p '49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p array = [0, 1, 3, 4, -5, 5, 6]
p array[0...array.index(array.min)].size
p '-------------------------------------------------'
p '50. Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p arr = [0, 1, 3, 4, -5, 5, 6]
arr_max = arr.max
count = 0
arr.each do |n|
  break if n == arr_max

  count += 1
end
p count
p '-------------------------------------------------'
p '61. Дан целочисленный массив. Найти два наибольших элемента.'
p array = [33, -66, 23, -105, 1, 52]
p array.max(2)
p '-------------------------------------------------'
p '62. Дан целочисленный массив. Найти два наименьших элемента.'
p array = [33, -66, 23, -105, 1, 52]
p array.min(2)
p '-------------------------------------------------'
p '65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
p array = [33, -66, 23, -105, 1, 52]
p array = array.select(&:even?) + array.select(&:odd?)
p '-------------------------------------------------'
p '66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
p array = [33, -66, 23, -105, 1, 52]
p array.partition(&:odd?).flatten!
p '-------------------------------------------------'
p '79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.'
p array = [-2, -3, 0, 2, 3]
array2 = array.each_index do |i|
  array[i] = array[i]**3 if array[i].positive?
  array[i] = array[i]**2 if array[i].negative?
end
p array2
p '-------------------------------------------------'
p '87. Дан целочисленный массив. Найти все четные элементы.'
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.find_all(&:even?)
p '-------------------------------------------------'
p '88. Дан целочисленный массив. Найти количество четных элементов.'
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.count(&:even?)
p '-------------------------------------------------'
p '89. Дан целочисленный массив. Найти все нечетные элементы.'
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.select(&:odd?)
p '-------------------------------------------------'
p '90. Дан целочисленный массив. Найти количество нечетных элементов.'
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.count(&:odd?)
p '--------------------------------------------------'
