#Codewars Problem: Guess the gifts!
#You will be given a wishlist (array), containing all possible items. Each item is in the format: {name: "toy car", size: "medium", clatters: "a bit", weight: "medium"} (Ruby version has an analog hash structure, see example below)
#You also get a list of presents (array), you see under the christmas tree, which have the following format each: {size: "small", clatters: "no", weight: "light"}
#Your task is to create a list of all possible presents you might get.

def guess_gifts(wishlist, presents)
  #stores actual_gifts based on the wishlist info
  actual_gifts = []
  #check through each hash in presents array to
  #see a matching present from the wishlist array
  i = 0 
  while i < presents.length  
    current_present = presents[i]
    
    j = 0
    while j < wishlist.length
      if wishlist[j][:size] == current_present[:size] &&
      wishlist[j][:clatters] == current_present[:clatters] &&
      wishlist[j][:weight] == current_present[:weight]
      
      actual_gifts << wishlist[j][:name] unless actual_gifts.include?(wishlist[j][:name])
      end
      j += 1
    end
    
    i += 1
  end

  #should return an array of actual gifts from your wishlist
  return actual_gifts
end