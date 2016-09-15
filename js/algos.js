//Take array
//Print out final result
//Compare each string withing the array
//compare the length of each one
//The string of greater length would be moved to index 0
//print out index 0

// function find(arr){
//   console.log(arr.sort(function(a, b) { return b.length - a.length})[0]);
// }
// find(["long phrase","longest phrase","longer phrase"]);

//Take two objects
//set the match to false until proven true later
//have both objects compare keys, if a match is found 
//reassign match with true

// function compare(object1, object2) {
//   var match = false;
//   for (var obj1Key in object1) {
//      if (object2.hasOwnProperty(obj1Key)) {
//       if (object1[obj1Key] === object2[obj1Key]) {
//          match = true;
//         }
//       }
//     }
//     console.log(match);
//   }
//  compare({name: "Steven", age: 54}, {name: "Tamir", age: 54});
 
var randnum=Math.floor(Math.random()*11)
console.log(randnum)

