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

  p array
end

def bubble_sort_by(array)
  swapped = true

  while swapped
    swapped = false

    0.upto(array.length - 2) do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end

  p array
end

bubble_sort([3, 4, 5, 2, 1])

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
