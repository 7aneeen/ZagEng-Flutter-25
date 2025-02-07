import 'dart:io';
import 'category.dart';
import 'inventory_log.dart';
import 'product.dart';

void main() async {
  List<Category> categories =[
    Category("Clothes"),
    Category("Electronics"),
    Category("Make-Up"),
  ];
  InventoryLog inventoryLog = InventoryLog();
  bool c = true;

  while(c){
    print(">>>>> Online Store <<<<<");
    print("1. Add product");
    print("2. View product");
    print("3. Update product");
    print("4. Remove product");
    print("5. view the inventory logs");
    print("6. Exit\n");

    print("Choose a number for a service..");
    int input = int.parse(stdin.readLineSync()!);

    switch(input){
      case 1:
        // adding product
        selectCategory();
        int input = int.parse(stdin.readLineSync()!);
        if(input > 0 && input <= categories.length)
          {
            categories[input-1].addProduct();
            int n = categories[input-1].products.length;
            inventoryLog.addLog("The product '${categories[input-1].products[n-1].name}' is added");
          }
        else {
          print("Invalid category!");
        }

        await Future.delayed(Duration(seconds: 2));
        break;
      case 2:
        // display products
        selectCategory();
        int input = int.parse(stdin.readLineSync()!);
        if(input > categories.length) {
          print("Invalid category!");
        }
        else {
          categories[input - 1].displayProducts();
        }
        await Future.delayed(Duration(seconds: 2));
        break;
      case 3:
        // update product
        selectCategory();
        int input = int.parse(stdin.readLineSync()!);
        if(input > categories.length) {
          print("Invalid category!");
        }
        else {
          categories[input - 1].displayProducts();
          inventoryLog.addLog(categories[input - 1].updateProduct());
        }
        await Future.delayed(Duration(seconds: 2));
        break;
      case 4:
        // remove product
        selectCategory();
        int input = int.parse(stdin.readLineSync()!);
        if(input > 0 && input <= categories.length) {
          categories[input - 1].displayProducts();
          inventoryLog.addLog("The product '${categories[input-1].removeProduct()}' is removed. ");
        }
        else {
          print("Invalid category!");
        }
        await Future.delayed(Duration(seconds: 2));
        break;
      case 5:
        // display inventory logs
        inventoryLog.displayLogs();
        await Future.delayed(Duration(seconds: 2));
        break;
      case 6:
        // exit the system
        print("You are exiting the system..");
        await Future.delayed(Duration(seconds: 2));
        c=false;
        break;
      default:
        print("Invalid choice!");
        await Future.delayed(Duration(seconds: 2));
        break;
    }


  }

}

void selectCategory(){
  print("Select category..");
  print("1. Clothes");
  print("2. Electronics");
  print("3. Make-Up");
}