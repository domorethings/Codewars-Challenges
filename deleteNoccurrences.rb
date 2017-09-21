#Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering. For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].

def delete_nth(order,max_e)
  numbers_count = {}
  result = []

  #check if each element appears more than n number of times
  #if not, add it to the result array
  order.each do | num |
    #check to see if num is in numbers_count table
    if numbers_count.has_key?(num) == false
      numbers_count[num] = 1    
    else
      numbers_count[num] += 1
    end

    if !(numbers_count[num] > max_e)
      result << num
    end
  end

  result
end

#Many more elegant solutions out there. gotta keep on learning... :)