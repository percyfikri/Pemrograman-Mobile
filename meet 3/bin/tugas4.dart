import 'dart:io';

void main() {
// final firstNumber = 13;
// final secondNumber = 18;
// final operator = "+";
// switch (operator) {
// case '+':
// print('$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
// break;
// case '-':
// print('$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
// break;
// case '*':
// print('$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
// break;
// case '/':
// print('$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
// break;
// default:
// print('Operator tidak ditemukan');
// }

//TUGAS 4

  stdout.write('Masukkan Bilangan 1 : ');
  var jawaban1 = int.parse(stdin.readLineSync()!);

  // print('\n + - * /');
  stdout.write('Masukkan Operator (+ - * /) : ');
  String operator = stdin.readLineSync()!.toLowerCase();

  stdout.write('Masukkan Bilangan 2 : ');
  var jawaban2 = int.parse(stdin.readLineSync()!);

  stdout.write('================================\nJAWABAN             : ');
  switch (operator) {
    case '+':
      print('$jawaban1 $operator $jawaban2 = ${jawaban1 + jawaban2}');
      break;
    case '-':
      print('$jawaban1 $operator $jawaban2 = ${jawaban1 - jawaban2}');
      break;
    case '*':
      print('$jawaban1 $operator $jawaban2 = ${jawaban1 * jawaban2}');
      break;
    case '/':
      print('$jawaban1 $operator $jawaban2 = ${jawaban1 / jawaban2}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
}
