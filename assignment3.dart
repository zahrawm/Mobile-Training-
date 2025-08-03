bool isLeapYear(int year) {
  if (year % 400 == 0) {
    return true;
  }

  if (year % 100 == 0) {
    return false;
  }

  if (year % 4 == 0) {
    return true;
  }

  return false;
}

bool isLeapYearConcise(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

void main() {
  print('1997 is leap year: ${isLeapYear(1997)}');
  print('1900 is leap year: ${isLeapYear(1900)}');
  print('2000 is leap year: ${isLeapYear(2000)}');
  print('2024 is leap year: ${isLeapYear(2024)}');
  print('2100 is leap year: ${isLeapYear(2100)}');
  print('2400 is leap year: ${isLeapYear(2400)}');
}
