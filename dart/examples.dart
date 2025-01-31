//Comments 
//Variables and Data Types
//Control FLows and Looping
//Functions and Methods
//void creates a function which does not return a value
//main() name of the function (served for dart)

void main() {
//call the function
greeting();
print(addTwo(100));

int result = addTwo(30);
print(result);

  var inferredString = "William";

  String explicitString = "Jattin";

  print(inferredString + " " + explicitString);

  //null safety
  int? someNumber;
  print(someNumber);
  someNumber = 12;
  print(someNumber);
  //late keyword
  late int willBeNumber;
  //
  int? goals;
  //control flow of porgram to avoid errors
  if(goals != null){
  print(goals + 2);
  } else {
    print("the variable goals is null");
  }

//Built -in data types
//numeric
int age = 21;
num count = 3;
double temp = 29.9;
//Booleans (true or false)
bool isReady = false;
//Collections: lists, arrays and maps
//Strings for expressing text
String school = "University of Miami";

print("My school is" + school);
//Using Placeholders to insert variables inside strings
print("My school is $school");

//Built-in types operations
print("my school name has ${school.length}  characters");

if(school.length > 20) {
  print("this name is really long");
} else {
  print("your school has a short name");
}

//Control operators
// > greater than
// > Less than
// >= greater than or equals
// <= less than or equals
// == equals 
// != not equal 
// % modulus 

//Arithmetic Operators
// +
// -
// * multiplatication
// / division
// % modulus
// Math Shortcuts
int x = 10;
x = x + 5; //15
//same as
x += 5; //20 -= *= /=
// ! the opposite of an expression
bool isHere = false; //!isHere
// || or operator one must be true
if(!isHere && (school.length < 10) ){
  //do some code
}
// and operator all conditions must be true

//While loops
int counter = 0; 
while (counter < 2) {
  print(count);
  counter ++;
}

//do while
do {
print(counter);
counter++;
} while(counter < 20); 

}
//Operaton with options or parameters
int addTwo(int number){
return number + 2;
}




//variable declaration
// type identifier/name = value;
//Dynamic Types
// var identifier/name = value;

//custom function
void greeting() {
  print("hello");
}