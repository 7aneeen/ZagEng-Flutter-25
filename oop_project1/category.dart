import 'dart:io';
import 'product.dart';

class Category {
  String name;
  List <Product> products = [];

  Category(this.name);


  void addProduct(){

      print("Enter the product name :");
      String name =stdin.readLineSync()!;

      print("Enter the product price :");
      double price;
      do {
        price = double.parse(stdin.readLineSync()!);
        if(price <= 0){
          print("please enter valid price!");
        }
      }while (price < 0);

      print("Enter the amount of product :");
      int amount;
      do {
        amount = int.parse(stdin.readLineSync()!);
        if(amount <= 0){
          print("please enter valid amount!");
        }
      }while (amount < 0);

      Product p = Product(name, price, amount);
      products.add(p);
      print("The product is added successfully!");
  }

  String removeProduct(){
    print("choose the number of product you want to remove :");
    int index = int.parse(stdin.readLineSync()!);
    String? removedProduct;
    if (index > 0 && index <= products.length) {
      removedProduct = products[index-1].name;
      products.removeAt(index-1);
      print("The product '$removedProduct' is removed successfully!");
    } else {
      print("Invalid choice!");
    }
    return removedProduct!;
  }

  void displayProducts(){
    if(products.isEmpty==true){
      print("There are no products!");
    }
    else {
      print("There are ${products.length} products");
      int i=0;
      for(var product in products) {
        i++;
        print(
            "= The Product $i >> Name: '${product.name}' | Price: ${product.price} | Amount: ${product.amount}");
      }
    }
  }

  String updateProduct(){
    print("Choose the number of the product you want to update:");
    int id = int.parse(stdin.readLineSync()!);

    print("Do you want to update the product name? [y,n]");
    String? nameChoice;
    do {
      nameChoice = stdin.readLineSync();
      if (nameChoice != "y" && nameChoice != "n") {
        print("Please enter 'y' for Yes or 'n' for No.");
      }
    } while (nameChoice != "y" && nameChoice != "n");

    if (nameChoice == "y") {
      print("Enter the new name:");
      products[id-1].name = stdin.readLineSync()!;
    }

    print("Do you want to update the product price? [y,n]");
    String? priceChoice;
    do {
      priceChoice = stdin.readLineSync();
      if (priceChoice != "y" && priceChoice != "n") {
        print("Please enter 'y' for Yes or 'n' for No.");
      }
    } while (priceChoice != "y" && priceChoice != "n");

    if (priceChoice == "y") {
      print("Enter the new price:");
      double newPrice;
      do {
        newPrice = double.parse(stdin.readLineSync()!);
        if(newPrice <= 0){
          print("please enter valid price!");
        }
      }while (newPrice < 0);
      if(newPrice > 0){
        products[id-1].price = newPrice;
      }
      }

    print("Do you want to update the product amount? [y,n]");
    String? amountChoice;
    do {
      amountChoice = stdin.readLineSync();
      if (amountChoice != "y" && amountChoice != "n") {
        print("Please enter 'y' for Yes or 'n' for No.");
      }
    } while (amountChoice != "y" && amountChoice != "n");

    if (amountChoice == "y") {
      print("Enter the new amount:");
      int newAmount;
      do {
        newAmount = int.parse(stdin.readLineSync()!);
        if(newAmount <= 0){
          print("please enter valid amount!");
        }
      }while (newAmount < 0);
      if(newAmount > 0){
        products[id-1].amount = newAmount;
      }
    }

    print("The product is updated successfully!");
    return "The product '${products[id-1].name}' is updated";
  }

}


