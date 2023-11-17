// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);

//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a map, not a set.

//   print(names1);
//   print(names2);
//   print(names3);
// }


void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('M Alvi Fikri'); // Menambahkan elemen ke names1 dengan .add()
  names1.add('2141720190'); // Menambahkan elemen ke names1 dengan .add()

  names2.addAll({'Nama Anda', 'NIM Anda'}); // Menambahkan elemen ke names2 dengan .addAll()

  print(names1);
  print(names2);
  print(names3);
}
