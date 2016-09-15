var colors = ["blue", "orange", "red", "black"]; 
var names = ["Ed", "Carrot", "Captain", "Tom"];  

colors.push("green"); 
names.push("Sky");

console.log("The horse named " + names[Math.floor(Math.random() * names.length)] + " is " + colors[Math.floor(Math.random() * colors.length)])

function Build(type, make, year, engine) {  
  console.log("Car specifics:", this);   

  this.type = type; 
  this.make = make; 
  this.year = year; 
  this.engine = engine;  
  this.rev = function() {
    console.log("vrooom!!"); };

  console.log("vehicle initialization complete..."); 
  } 

  console.log("Lets build your vehicle...");
  var car = new Build("truck", "Chevy", 2016, "V8"); 
  console.log(car.type); 
  console.log(car.make); 
  console.log(car.year); 
  console.log(car.engine);
  console.log("Our car is tough:"); 
  car.rev();



