// original link: https://www.codewars.com/kata/pick-peaks/javascript Level: 4KYU
// In this kata, you will write a function that returns the positions and the values of the "peaks" (or local maxima) of a numeric array.

// For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at position 3 with a value of 5 (since arr[3] equals 5).

// The output will be returned as an object with two properties: pos and peaks. Both of these properties should be arrays. If there is no peak in the given array, then the output should be {pos: [], peaks: []}.

// Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) should return {pos: [3, 7], peaks: [6, 3]} (or equivalent in other languages)

// All input arrays will be valid integer arrays (although it could still be empty), so you won't need to validate the input.

// The first and last elements of the array will not be considered as peaks (in the context of a mathematical function, we don't know what is after and before and therefore, we don't know if it is a peak or not).

// Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3] does not. In case of a plateau-peak, please only return the position and value of the beginning of the plateau. For example: pickPeaks([1, 2, 2, 2, 1]) returns {pos: [1], peaks: [2]} (or equivalent in other languages)

// Have fun!

function pickPeaks(arr){
  var result = {
    pos: [],
    peaks: []
  }
  //Front and back of array cannot be peaks
  for(var i = 1; i < arr.length - 1; i++) {
    if (isPeakAtPosition(arr, i)){
      result.pos.push(i);
      result.peaks.push(arr[i]);
    }
  }
  return result
}


function isPeakAtPosition(arr, pos){
  for(var i = 0; i < arr.length; i++){
    if (i == pos) {
      //Previous value is smaller than arr at arrPos
      if(arr[i - 1] < arr[i]) {
        //And next value is smaller than arr at arrPos
        if(arr[i + 1] < arr[i]) {
          return true;
        } else if (arr[i + 1] == arr[i]) {
          //Move on to the next j until it is not the same
          for(var j = i + 1; j < arr.length; j++) {
            if (arr[j] < arr[i]) {
              return true
            } else if ((arr[j] > arr[i]) || j == arr.length - 1){
              return false 
            }
          }
        }
      }
    }
  }
  return false
}