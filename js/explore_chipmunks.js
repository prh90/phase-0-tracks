// function takes string
// string will be split, reversed and rejoined
// condition if 1 == 1 
// if true print out the string reversed. 

function reverse(str){
    return (str.split("").reverse().join(""));
}

var name = reverse("pablo");

if (1 == 1){
  console.log("Condition is true your reversed string is: " + name)
}
