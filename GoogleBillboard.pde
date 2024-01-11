public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{

  System.out.println(tenDigits(e));
}

public void draw()
{
  //not needed for this assignment
}
public String tenDigits(String str) {
  String ten = "";
  for (int i = 0; i < str.length() - 10; i++) {
    String digits = str.substring(i, i+11);
    double dNum = Double.parseDouble(digits);
    if (isPrime(dNum) == true) {
      ten = digits;
      break;
    }
  }
  return(ten);
}
public boolean isPrime(double dNum)
{
  if (dNum < 2)
    return false;
  for (int i = 2; i <= Math.sqrt(dNum); i++)
    if (dNum % i == 0)
      return false;
  return true;
}
