

class ValidationMixin {
  String validateEmail(String value) {
    if(value.contains("@")){
      return null;
    }
  
    return "Please enter a valid e-mail.";
  }
  
  String validatePassword(String value) {
    if(value.length > 4) {
      return null;
    }

    return "Password must have 4 characters or more.";
  }
}