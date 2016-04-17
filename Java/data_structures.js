// Release 1

var colors = ["blue", "red", "yellow", "gray"];
var names =  ["Charlie", "Daisy", "Ed", "Aqua"];

colors.push ("purple")
names.push ("Bolt")

console.log(colors[0]);
console.log(names[0]);

var barn = {}

for (var i = 0; i < names.length; i++) {
  barn[names[i]] = colors[i]
}

console.log(barn)

// Release 2 

function Car(year, brand, color)
{	
    this.year;
	this.brand;
	this.color;
    this.beep = function() { console.log("Beep!"); };
}

var car1 = newCar(2016, "Subaru STi", "Gray")
console.log(car1);
car1.beep();

var car2 = new Car (2016, "Acura", "White");
console.log(car2);
car2.beep();

    


