class Product {
  String name;
  double price;
  int amount = 0;

  Product(this.name, this.price,int amount){
    this.amount+=amount;
  }

}