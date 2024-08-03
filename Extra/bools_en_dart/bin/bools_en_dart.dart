
void main() {
  bool isActive =  true;
  bool isPasswordCorrect = true;
  bool isAuthenticated = isPasswordCorrect && isActive;

  print(isAuthenticated);
  
}
