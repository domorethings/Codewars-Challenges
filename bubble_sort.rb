# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)

def bubble_sort(arr)
  sorted = false
  
  while !(sorted)
    sorted = true
    
    i = 0 
    while i < arr.length-1
      if arr[i] > arr[i+1]
        larger = arr[i]
        smaller = arr[i+1]
        arr[i] = smaller
        arr[i+1] = larger
        sorted = false
      end
      i += 1
    end
  end
  
  arr
end

puts("\nTests for #bubble_sort")
puts("===============================================")
    puts "bubble_sort([]) == []: "  + (bubble_sort([]) == []).to_s
    puts "bubble_sort([1]) == [1]: "  + (bubble_sort([1]) == [1]).to_s
    puts "bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]: "  + (bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]).to_s
puts("===============================================")
