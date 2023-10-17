//EXCEPTION HANDLING:Used to handle instances where code or applications crash
//1. ON clause: used when you know the type of exception/error
//2. Catch Clause with Exception Object
//3. Catch Clause with Exception Object and StackTrace Object
//4. Finally Clause
//5. Create your own Custom Exception

void main(){
  //CASE 1 ON CLAUSE
  try{
    int result = 12 ~/ 0;
    print("the result is $result");
  }on UnsupportedError{                         //use the ON Clause when you're sure of the exception you'll get
  print('Cannot be divisible by 0');
  }

//CASE 2 CATCH CLAUSE
  try{
  num division  = 12 ~/ 0;
  print('$division');
  } catch(e){                                   //use the CATCH clause when you don't knwo the exception you'll get
  print('the extception is $e');
  }

//CASE 3 STACK TRACE
  try{
    num div = 12~/0;
    print('$div');
  } catch(e, s){
    print('The exception is $e');
    print('StrackTrace \n$s');                 //Stack trace (s) is used with CATCH clause when we want to trasck the event that occured before the exception was thrown
  }

  //CASE 4 FINALLY CLAUSE
  try{
    num d = 12~/ 0;
    print('$d');
  }catch(e,s){
    print('The exception thrown is $e');
    print('Stack traced \n $s');
  }finally{
    print('This finally clasue is always executed'); //FINALLY clause is always executed with or without an exception
  }

  //CASE 5 CUSTOM EXCEPTIONS
  var error =DepositException();  //define a variable of value DepositException() class
  // ignore: unused_local_variable
  var message =error.errorMessage(); //instantiate the object errorMessage and assign to variable message
  try {
    num deposit = depositMoney(500);
    print(deposit);
  }catch(e, message){
    print(e);
    print(message);
  }finally{
    //if (depositMoney == true){
      print('Thank you for your deposit');
    //}else{
      //print(message);
    // }
  }

}

//1. Create a class(display error message when depositing money in the bank less that 0)
class DepositException implements Exception{
  String errorMessage(){
    return'You cannot deposit less tha 0';
  }
}

num depositMoney(int amount){
  if (amount < 0){
    throw new DepositException();
  }
  return amount;
}