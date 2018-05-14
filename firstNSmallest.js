function firstNSmallest(array, n){
  var result = [];
  var sortedArr = array.slice().sort(function(a, b) {
    return a - b;
  });
  //Contains the smallest numbers needed
  var smallestNumbers = sortedArr.slice(0, n);
  
  //Iterate through the array
  array.forEach(function(num){
    //Replace found num in smallestNumbers arr and add the num to result
    if (smallestNumbers.includes(num)){
      result.push(num);   
      var indexInSmallArr = smallestNumbers.indexOf(num);     
      smallestNumbers[indexInSmallArr] = "found";
    }
  });
  
  return result;
}
