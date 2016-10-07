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

