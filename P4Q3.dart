// Decimal Number - Binary Conversion
String decimalToBinary(int decimalNumber) {
  return decimalNumber.toRadixString(2);
}

// Binary Number - Decimal Conversion
int binaryToDecimal(String binaryNumber) {
  return int.parse(binaryNumber, radix: 2);
}

// Decimal Number - Octal Conversion
String decimalToOctal(int decimalNumber) {
  return decimalNumber.toRadixString(8);
}

// Octal number - Decimal Conversion
int octalToDecimal(String octalNumber) {
  return int.parse(octalNumber, radix: 8);
}

// Octal Number - Binary Conversion
String octalToBinary(String octalNumber) {
  int decimal = int.parse(octalNumber, radix: 8);
  return decimal.toRadixString(2);
}

// Decimal Number - Hexa Conversion
String decimalToHexadecimal(int decimalNumber) {
  return decimalNumber.toRadixString(16).toUpperCase();
}

// Hexa Number - Decimal Conversion
int hexadecimalToDecimal(String hexadecimalNumber) {
  return int.parse(hexadecimalNumber, radix: 16);
}

// Hexa Number - Binary Conversion
String hexadecimalToBinary(String hexadecimalNumber) {
  int decimal = int.parse(hexadecimalNumber, radix: 16);
  return decimal.toRadixString(2);
}

void main() {
  // Example usage
  int decimalNumber = 42;
  String binaryResult = decimalToBinary(decimalNumber);
  print('Decimal to Binary: $binaryResult'); 

  String binaryNumber = '101010';
  int decimalResult = binaryToDecimal(binaryNumber);
  print('Binary to Decimal: $decimalResult'); 

  String octalResult = decimalToOctal(decimalNumber);
  print('Decimal to Octal: $octalResult'); 

  String octalNumber = '52';
  int decimalFromOctal = octalToDecimal(octalNumber);
  print('Octal to Decimal: $decimalFromOctal'); 

  String binaryFromOctal = octalToBinary(octalNumber);
  print('Octal to Binary: $binaryFromOctal'); 

  String hexadecimalResult = decimalToHexadecimal(decimalNumber);
  print('Decimal to Hexadecimal: $hexadecimalResult'); 

  String hexadecimalNumber = '2A';
  int decimalFromHexadecimal = hexadecimalToDecimal(hexadecimalNumber);
  print('Hexadecimal to Decimal: $decimalFromHexadecimal'); 

  String binaryFromHexadecimal = hexadecimalToBinary(hexadecimalNumber);
  print('Hexadecimal to Binary: $binaryFromHexadecimal'); // Output: Hexadecimal to Binary: 101010
}
