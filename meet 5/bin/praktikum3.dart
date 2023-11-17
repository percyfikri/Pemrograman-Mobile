// void main() {
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);

// var mhs1 = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// var mhs2 = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';
// }



void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'Nama': 'M Alvi Fikri',
    'NIM': '2141720190'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'Nama': 'M Alvi Fikri',
    'NIM': '2141720190'
  };

  print("\ngifts : ");
  print(gifts);
  print("\nnobleGases : ");
  print(nobleGases);
  print('\n==================================================================\n');

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['Nama'] = 'M Alvi Fikri';
  mhs1['NIM'] = '2141720190';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[26] = 'M Alvi Fikri';
  mhs2[34] = '2141720190';

  print('mhs1 :');
  print(mhs1);
  print('');
  print('mhs2 :');
  print(mhs2);
}
