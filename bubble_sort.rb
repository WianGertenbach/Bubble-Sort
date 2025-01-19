unsorted = [3,4,69,28,63,44,57,93,58,93]
sorted = unsorted.sort


def bubble_sort(arr)
  swapped = false
  temp = 0
  range_outer = (0..(arr.size))
  range_inner = (0..(arr.size-2))
  count = 0

  range_outer.each do |outer|
    swapped = false
    range_inner.each do |index|
      if arr[index] > arr[index+1]
        #p "The current value #{arr[index]} is greater than the next #{arr[index+1]}"
        temp = arr[index]
        arr[index] = arr[index+1]
        arr[index+1] = temp
        swapped = true
      end
    end
    count += 1
    break if swapped == false
  end
  p "The outer loop repeats #{count} times"
  arr
end


bubble_sorted = bubble_sort(unsorted)
p "Ruby sort method: #{sorted}"
p "Bubble sort: #{bubble_sorted}"
p "Are the two sorted arrays equal: #{bubble_sorted.eql?(sorted)}"