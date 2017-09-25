#Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
#Example 1: a1 = ["arp", "live", "strong"]
#a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

#returns ["arp", "live", "strong"]

#Example 2: a1 = ["tarp", "mice", "bull"]

#a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

#returns []

#Notes:

#Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.

#In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.

#Beware: r must be without duplicates.

def in_array(array1, array2)
    result = []
  
    i = 0
    while i < array2.length
      array2_word = array2[i]
      #check to see if array1's current word is inside array2
      j = 0
      while j < array1.length
        array1_word = array1[j]
        if array2_word.include?(array1_word)
          result << array1_word unless result.include?(array1_word)
        end
        j += 1
      end
      i += 1
    end 
    
    result.sort_by!{ |m| m.downcase }
    return result
  end