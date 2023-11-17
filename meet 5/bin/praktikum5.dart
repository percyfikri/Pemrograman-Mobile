void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(tukar(record));
  print(record);

  (String, int) mahasiswa = ('M Alvi Fikri', 2141720190);
  print(mahasiswa);

  var mahasiswa2 = ('M Alvi Fikri', a: 2141720190, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'M Alvi Fikri'
  print(mahasiswa2.a); // Prints 2141720190
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, bool) tukar((String, String, {int a, bool b}) record) {
  var (a, b) = (record.b, record.a);
  return (b, a);
}

// void fun1() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }