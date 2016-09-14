//Take word 
//split the word
//while split, reverse it
//join the word
//print out return string

function reverse(str){
    return (str.split("").reverse().join(""));
}
var storage = reverse("Hello");

if (1 == 1){
  console.log("The condition is true so your reversed string is: " + storage)
}
