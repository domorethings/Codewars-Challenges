
#Largest 5 digit number in a series (5 kyu)
#Complete the solution so that it returns the largest five digit number 
#found within the number given. The number will be passed in as a string of only digits. 
#It should return a five digit integer. The number passed may be as large as 1000 digits.

def solution(digits)
  #collect five digit numbers from digits
  #check to see which five digit number is largest
  numbers_arr = digits.split('')
  five_digits = []

  i = 0
  while i < numbers_arr.length - 4
    #add the current five digit number to five_digits
    five_digits << numbers_arr[i..i+4].join('')  
    i += 1
  end

  five_digits.sort.last.to_i
end
