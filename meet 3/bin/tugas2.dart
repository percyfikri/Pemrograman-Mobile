import 'dart:io';

void main() {

  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= i; j++) {
      // Pindah ke baris berikutnya
      stdout.write('*');
    }print('');
  }
}
