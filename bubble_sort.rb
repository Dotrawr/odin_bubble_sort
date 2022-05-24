# frozen_string_literal: true

def bubble_sort(array)
  return 'Not an array.' unless array.is_a?(Array)

  moved = false
  array.each_with_index do |value, i|
    next if array[i + 1].nil? || value <= array[i + 1]

    moved = true
    array[i], array[i + 1] = array[i + 1], array[i]
  end
  bubble_sort(array) if moved == true
  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2]).to_s # => [0, 2, 2, 3, 4, 78]
