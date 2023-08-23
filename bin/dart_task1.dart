

import 'dart:io';
import 'dart:math';

void main() {
//create laptop store with some details like:
//hard disk size, ram, processor and camera
//show user some laptops then user enter budget
//then show laptops that the user could buy, using list with map

Map laptop1 = {'name':'lenovo',
'price':220,
'size':14,
 'ram' :12 ,
 'processor': 'Core i7',
 'camera' :20};

Map laptop2 = {'name':'HUAWEI',
'price':400,
'size':17,
 'ram' :13 ,
 'processor': 'Core i5',
 'camera' :25};

 Map laptop3 = {'name':'hp',
'price':300,
'size':17,
 'ram' :12 ,
 'processor': 'Core i4',
 'camera' :20};


 List<Map> laptops = [laptop1,laptop2,laptop3];
 for (var element in laptops) {
  print(element["name"]+ ":"+ element["size"].toString()+ ":" +element ["ram"].toString()+":"+element["processor"]
  +element["camera"].toString()+element["price"].toString());
 }

 print("enter your budget");
 double? budget = double.tryParse(stdin.readLineSync()??"0");

 var newlist = laptops.where((e) => e["price"] <= budget).toList();
for (var v in newlist) {

  print(v["name"]+":"+v["price"].toString());
  
}
}
