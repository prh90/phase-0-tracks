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

//Take two objects
//set the match to false until proven true later
//have both objects compare keys, if a match is found 
//reassign match with true

function compare(obj1, obj2){
  match = false
  
  return match
}