//FUNTIONS IN DART

//CREATING FUNCTIONS
void main(){
  findPerimeter(); //call function findPerimeter without parameters
  findArea(4, 2); //call function findArea with parameters
  triangleArea(5,7); //call function triangleArea with return type

  int square = squareArea(5);
  print('The area of a square is $square');// calling a  short-hand syntax function

  printCities('New York', 'Baltimore', 'Atlantic City');
  printCountries('Ghana', 'Egypt', 'England');

  num volume =findVolume(5,breadth: 10, height: 5);//Always assign named-parameter-function findVolume to variable. Don't forget the colon to assign value. Sequence does not matter.
  print("Volume is $volume");

  num rectangle = rectArea(2); //breadth value can be override by breadth:10
  print('Area of the rectangle is $rectangle');//has a default breadth parameter of value 5
}

//By default in Dart a function returns null

// Define a function
//Perimeter of a rectangle
void findPerimeter(){ //function defined without perimeters
  int length = 4;
  int breadth = 2;

  int perimeter = 2 * (length * breadth);
  print('The perimeter is $perimeter');
}

//Pass paremeters to function
//Area of a rectangle
void findArea(int length, int breadth){ //funtion defines with parameters lenght and breadth
  int area = length * breadth;
  print('The area of a rectangle is $area');
}

//Return value from a function
//Area of a triangle
num triangleArea(double breadth, double height){
num triangle_area = (1/2 * breadth) * height;
return triangle_area; //return type triangle_area
}

//FUNCTIONS IN EXPRESSIONS( SHORT-HAND SYNTAX)
//Using the Fat Arrow => to shorten a syntax
int squareArea(int length) => length^2;

//PARAMETERS IN FUNCTIONS
//1. Required parameters:Cannor skip parameters
void printCities(String city1, String city2, String city3){ //All parameters must be met for function to run
  print("The name of the first city is $city1");
  print("The name of the second city is $city2");
  print("The name of the third city is $city3"); //if this is not in the code, function will not run
}


//2. Optional Parameters >> Positional/Named/Default
//Positional Parameters: use [] to make parameters optional
void printCountries(String country1, String country2, [country3]){ //code will run if values are not passed in parameters in []. Also, do not assign a datatype to optional parameter
  print("The name of the first city is $country1");
  print("The name of the second city is $country2");
  print("The name of the third city is $country3"); //if this is not in the code, function will not run
}

//Name Parameters: {} is used to prevent errors if there's a large number of parameters.
num findVolume(int length, {breadth, height}) => length * breadth *height; //num type is used when working with numbers of different data types, int or double. ALways assign to variable whenn calling

//Default Parameters: {} is also used but parameters are assigned values
num rectArea(int length, {breadth = 5}) => length * breadth;

