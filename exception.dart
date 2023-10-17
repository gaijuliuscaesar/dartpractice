//EXCEPTION HANDLING:Used to handle instances where code or applications crash
//1. ON clause: used when you know the type of exception/error
//2. Catch Clause with Exception Object
//3. Catch Clause with Exception Object and StackTrace Object
//4. Finally Clause
//5. Create your own Custom Exception

void main(){
  try{
    int result = 12 ~/ 0;
    print("the result is $result");
}on UnsupportedError{                         //using the ON Clause
  print('Cannot be divisible by 0');
}
}