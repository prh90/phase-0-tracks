//Take array
//Print out final result
//Compare each string withing the array
//compare the length of each one
//The string of greater length would be moved to index 0
//print out index 0

function find(arr){
  console.log(arr.sort(function(a, b) { return b.length - a.length})[0]);
}
find(["long phrase","longest phrase","longer phrase"]);