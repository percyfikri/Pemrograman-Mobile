import 'dart:io';

void main() {
  stdout.write('Masukkan Bilangan : ');
  var bilangan = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < bilangan; i++) {
    // Membuat spasi sebelum bintang
    for (int j = 0; j < bilangan - i ; j++) {
      stdout.write(' ');
    }
    
    // Mencetak bintang
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write('*');
    }
    
    // Pindah ke baris berikutnya
    print(' ');
  }
}
