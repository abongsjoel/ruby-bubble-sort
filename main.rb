def bubble_sort(array)
  swapped = true

  while swapped
    swapped = false

    0.upto(array.length - 2) do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end

  array
end

p bubble_sort([3, 4, 5, 2, 1])
