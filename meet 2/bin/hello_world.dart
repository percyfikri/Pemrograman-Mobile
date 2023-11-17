// import 'package:hello_world/hello_world.dart' as hello_world;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${hello_world.calculate()}!');

  stdout.write(
      "Masukkan Nama Anda : "); //digunakan untuk input data pada sebelah kanan
  String nama1 = stdin
      .readLineSync()!; //stdin.readLineSync digunakan memasukkan input berupa text

  stdout.write(
      "Masukkan Umur Anda : "); //digunakan untuk input data pada sebelah kanan
  int umur1 = int.parse(stdin
      .readLineSync()!); //int.parse digunakan untuk convert data dari string to int
  //stdin.readLineSync() digunakan untuk membaca baris input melalui terminal

  stdout.write(
      "Masukkan Nama Anda : "); //digunakan untuk input data pada sebelah kanan
  String nama2 = stdin
      .readLineSync()!; //stdin.readLineSync digunakan memasukkan input berupa text

  stdout.write(
      "Masukkan Umur Anda : "); //digunakan untuk input data pada sebelah kanan
  int umur2 = int.parse(stdin
      .readLineSync()!); //int.parse digunakan untuk convert data dari string to int
  //stdin.readLineSync() digunakan untuk membaca baris input melalui terminal

  String hasilnama = nama1 +
      nama2; //menjumlahkan nilai dari variable nama1 dan nama2 dengan membuat vaiable hasilnama yang digunakan untuk menampung nilai baru dari hasil penjumlahan tersebut
  print(
      "Hasil Penjumlahan Nama : $hasilnama"); //print digunakan untuk mencetak pesan ke layar

  int hasilumur = umur1 +
      umur2; //menjumlahkan nilai dari variable Umur1 dan Umur2 dengan membuat vaiable hasilumur yang digunakan untuk menampung nilai baru dari hasil penjumlahan tersebut
  print(
      "Hasil Penjumlahan Umur : $hasilumur"); //print digunakan untuk mencetak pesan ke layar
}
