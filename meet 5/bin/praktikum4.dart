void main() {
  //LANGKAH 1-2
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  //LANGKAH 3
  // list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);
  
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1]; // Menghilangkan "?"
  print(list3.length);

  //LANGKAH 4
  var promoActive = true; //bisa diganti false jika ingin melihat perbedaan
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 

  //LANGKAH 5
  var login = 'Admin'; // Ganti dengan kondisi lain jika diperlukan
  var nav2 = ['Home', 'Furniture', 'Plants'];
  switch (login) {
    case 'Manager':
      nav2.add('Inventory');
      break;
    default:
      nav2.add('Inventory for Admin');
      break;
  }
  print(nav2);


  //LANGKAH 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
