class products {
  String productName, price, image;
  bool sale;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  products(this.productName, this.price, this.sale, this.image);
}
