import 'dart:io';

void main() {
  print("BELI MINYAK GORENG, JIKA ADA TELUR");
  stdout.write("Apakah ada telur? (y/n): ");

  String jawaban = stdin.readLineSync()!.toLowerCase();

  if (jawaban == "y") {
    // stdout.write("Masukkan jumlah Minyak Goreng yang dibeli: ");
    // int jumlahMinyak = int.parse(stdin.readLineSync()!);

    // // print("Minyak Goreng terbeli");

    // if (jumlahMinyak < 6 || jumlahMinyak > 6  ) {
    //   print("Anda membeli Minyak Goreng tidak sesuai perintah");
    // } else {
    //   print("Minyak Goreng sebanyak $jumlahMinyak Terbeli");
    // }
    print("Membeli Minyak Goreng Sebanyak 6 Botol");
  } else if (jawaban == "n") {
    print("Membeli Minyak Goreng Sebanyak 1 Botol");
  } else {
    print("Jawaban tidak valid. Mohon jawab 'ya' atau 'tidak'.");
  }
}
