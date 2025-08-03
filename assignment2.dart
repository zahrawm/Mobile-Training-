 import 'dart:math' as math;

int square(int n) {
  if (n < 1 || n > 64) {
    throw ArgumentError('Square number must be between 1 and 64');
  }
  
  return math.pow(2, n - 1).toInt();
}
int total() {
  return math.pow(2, 64).toInt() - 1;
}
String formatNumber(int number) {
  String numStr = number.toString();
  String result = '';
  for (int i = 0; i < numStr.length; i++) {
    if (i > 0 && (numStr.length - i) % 3 == 0) {
      result += ',';
    }
    result += numStr[i];
  }
  
  return result;
}

void main() {
  print('Wheat and Chessboard Problem');
  print('=' * 30);
  
  List<int> testSquares = [1, 2, 3, 10, 20, 32, 64];
  print('\nGrains on specific squares:');
  
  for (int sq in testSquares) {
    int grains = square(sq);
    String squareStr = sq.toString().padLeft(2);
    print('Square $squareStr: ${formatNumber(grains)} grains');
  }
  
  int totalGrains = total();
  print('\nTotal grains on entire chessboard: ${formatNumber(totalGrains)}');
  double quintillions = totalGrains / 1e18;
  print('\nThat\'s approximately ${quintillions.toStringAsFixed(1)} quintillion grains!');
  
  double weightKg = totalGrains * 0.05 / 1000;
  print('If each grain weighs 0.05g, total weight: ${formatNumber(weightKg.round())} kg');
  print('That\'s about ${(weightKg / 1e9).round()} billion tons!');
  
  print('\nExponential growth pattern (first 10 squares):');
  int runningTotal = 0;
  
  for (int i = 1; i <= 10; i++) {
    int grainsOnSquare = square(i);
    runningTotal += grainsOnSquare;
    String squareStr = i.toString().padLeft(2);
    String grainsStr = grainsOnSquare.toString().padLeft(4);
    String totalStr = runningTotal.toString().padLeft(5);
    print('Square $squareStr: $grainsStr grains | Running total: $totalStr');
  }
}
