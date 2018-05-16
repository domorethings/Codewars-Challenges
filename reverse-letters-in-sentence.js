Original Kata: https://www.codewars.com/kata/reverse-letters-in-sentence/train/javascript

//Take a sentence (string) and reverse each word in the sentence. Do not reverse the order of the words, just the letters in each word.

//If there is punctuation, it should be interpreted as a regular character; no special rules.

//If there is spacing before/after the input string, leave them there.

//String will not be empty.

// reverse the letters in the sentence
function reverser(sentence) {
	return (sentence.split(' ')).map(x => x.split('').reverse().join('')).join(' ');
}
