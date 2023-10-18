//OBJECT ORIENTED PROGRAMMING

void main() {
//calling the function with an object
  var student1 =
      Student(); //assing variable student1 with value class-Sudent in a variable. Thiss is the object. student1 is called a 'reference variable'
  student1.name =
      "Joshua Kelvin Sarbah"; //instanciating or calling a variable/state in a class
  student1.indexNumber =
      1691817; //instanciation or calling an instance/state in a class

  student1.study;
  student1.sleep;

  print(
      '${student1.name} and ${student1.indexNumber}'); // name and indexNumber are objetcs class Student and are called using "."

  print('${student1.study()}');
  print('${student1.sleep()}');

  if (student1.indexNumber <= 0) {
    print('Index number cannot be 0. Please input the correct index number');
  }


}

//Define Calss and Object
//Class is made up of state and behaviour
//Define the class(state and behaviour) of a student
class Student {
  String name = ""; //state(instance or field) is a variable
  int indexNumber = 0; //state(instance or field) is a variable

  String study() {
    //behaviour is a function(method)
    return ('${this.name} with ${this.indexNumber}is now studying');
  }

  String sleep() {
    //behaviour is a function(method)
    return ("${this.name} with ${this.indexNumber} is now sleeping");
  }
}

//WORKING WITH CONSTRUCTORS: Constructor is the first method in a class and always has the name of the class.
//1. Default constructor: A constructor(method(function) in a class) with the class name
class rectangle {
  int length = 0; //instances of class rectangle
  int breadth = 0; //instances of class rectangle

  rectangle() {
    //this is the default constructor. Also does not have a datatype
    num rectangleArea;
  }
}

//2. Parameterized constructor: A constructor with parameters
class Square {
  int squarelength = 0;

  Square(int squarelength) {
    //this is a constructor with a parameter
    num squareArea = squarelength ^ 2;
  }
}
//3. Named Constructor
//4. Constant Constructor