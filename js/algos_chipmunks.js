//Create a function that takes an array
//sort through array
//find the length of each index
//compare the lengths 
//Return the longest length

function longest(arr){
  console.log(arr.sort(function(a,b) {return b.length - a.length})[0]);
}

//longest(["long phrase","longest phrase","longer phrase"])
//longest(["Pablo", "Rod", "Paul"])

//__________________________________________________________

//Takes two objects as arguments 
//Scans through objects
//set matcher to false until condition is met

function scan(object1, object2){
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

//scan({name: "Roman", age: 26}, {name: "Pablo", age: 26})
//scan({name: "Roman", age: 16}, {name: "Pablo", age: 26})

//________________________________________________________

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

function newArr(num){
  var arr = [];
  for (var i = 0; i < num; i++){
    arr.push(newWord());
  }
  return arr;
}
// ______________________________________________________________
//                            DRIVER CODE
for (i = 0; i < 10; i++){
  var test = newArr(3);
  console.log("\nThe array we generated is:");
  console.log(test);
  console.log("\nThe longest word in the string is:");
  longest(test);
}


