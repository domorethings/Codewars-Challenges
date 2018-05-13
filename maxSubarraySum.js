var maxSequence = function(arr) {
	var currentSum = 0;
	return arr.reduce((maxSum, number) => {
		currentSum = Math.max(currentSum + number, 0);
		return Math.max(currentSum, maxSum);
	}, 0);
}