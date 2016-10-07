var combined = {},
  i = 0,
  names = ["Bob", "Sharon", "Apple", "Cinnamon"],
  colors = ["blue", "green", "yellow", "red"];


names.push("Buck")
colors.push("Silver")

for (i; i < names.length; i++){
  combined[names[i]] = colors[i];
}

console.log(combined);

//console.log(names);
//console.log(colors);

function Vehicle(make, model, year) {
  console.log("New car:", this);

  this.make = make;
  this.model = model;
  this.year= year;

  this.honk = function() { console.log("Beeep!!!!"); };

  console.log("VEHICLE INITIALIZATION COMPLETE");
}

var car = new Vehicle("Ford", "Focus", 2016);
console.log(car.make);
console.log(car.model);
console.log(car.year);
car.honk();