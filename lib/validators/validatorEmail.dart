bool validateEmail(String value) {
  if (!RegExp(r'^[\w-\.]+@[\w-\.]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
    return false;
  }else{
    return true; // Valid email
  }
  
}