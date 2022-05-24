def bubble_sort(array)
  if !array.is_a? (Array)
    return "Not an array."
  end
  moved = false
  array.each_with_index do |value, i|
    if array[i + 1].nil? || value <= array[i + 1]
      next
    end
    moved = true
    array[i], array[i+1] = array[i+1], array[i]
  end
  if moved == true
    bubble_sort(array) 
  end
  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2]).to_s # => [0, 2, 2, 3, 4, 78]