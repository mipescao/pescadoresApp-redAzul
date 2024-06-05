bool validatePassword(String value) {
  if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!@#$%^&*()_+={}\[\]:;<>?¡¿\-,.]{8,}$').hasMatch(value)) {
    return false;
  }
  return true; // Valid email
}