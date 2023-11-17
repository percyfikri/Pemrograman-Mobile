import 'dart:io';

void main() {
  int baris = 10;  // Mendefinisikan jumlah total baris (10 baris).
  int i = baris;  // Inisialisasi variabel i dengan nilai baris (10).

  do {
    int j = 1;  // Inisialisasi variabel j dengan nilai 1.

    do {
      // Cetak bintang (tanpa baris baru).
      stdout.write('*');
      j++;  // Meningkatkan nilai j untuk mencetak bintang berikutnya.
    } while (j <= i);  // Loop berlanjut selama j kurang dari atau sama dengan i.

    print('');  // Mencetak baris baru untuk memulai baris berikutnya.
    i--;  // Mengurangkan nilai i untuk mencetak baris yang lebih pendek.
  } while (i >= 1);  // Loop berlanjut selama i lebih besar dari atau sama dengan 1.
}


