//Take array
//Print out final result
//Compare each string withing the array
//compare the length of each one
//The string of greater length would be moved to index 0
//print out index 0

function find(arr){
  console.log(arr.sort(function(a, b) { return b.length - a.length})[0]);
}
// find(["long phrase","longest phrase","longer phrase"]);

//____________________________________________________________________________
//Take two objects
//set the match to false until proven true later
//have both objects compare keys, if a match is found 
//reassign match with true

function compare(object1, object2) {
  var match = false;
  for (var obj1Key in object1) {
     if (object2.hasOwnProperty(obj1Key)) {
      if (object1[obj1Key] === object2[obj1Key]) {
         match = true;
        }
      }
    }
    console.log(match);
  }
 // compare({name: "Steven", age: 54}, {name: "Tamir", age: 54});


//_____________________________________________________________ 
// TEST CODE TO FIND RANDOM NUMBER
// var randnum=Math.floor(Math.random()*11)
// console.log(randnum)
// ____________________________________________________________

// newWord
// set random numbers from 1-10
// Set a string of letters to pick from
// set empty string to save random words into
// iterate through letters until met condition of randNum

function newWord(){
  var randNum=Math.floor(Math.random()*11)
  var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  var word = "";
  for (i = 0; i < randNum; i++) { 
    word += letters.charAt(Math.floor(Math.random()*letters.length));
  }
  return word;
}
//____________________________________________________________________
// Create an empty array to push new words into
// user passes the number of new words they would like
// Iterate through the number of times the generated word gets pushed into array
// return the new array
function newArr(num){
  var arr = [];
  for (var i = 0; i < num; i++){
    arr.push(newWord());
  }
  return arr;
}
// newArr(5)
// ====================================================================
//                            DRIVER CODE
for (i = 0; i < 10; i++){
  var test = newArr(4);
  console.log("The array we generated is:");
  console.log(test);
  console.log("The longest word in the string is:");
  find(test);
}
