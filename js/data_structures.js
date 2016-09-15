var colors = ["blue", "orange", "red", "black"]; 
var names = ["Ed", "Carrot", "Captain", "Tom"];  

colors.push("green"); 
names.push("Sky");

console.log("The horse named " + names[Math.floor(Math.random() * names.length)] + " is " + colors[Math.floor(Math.random() * colors.length)])