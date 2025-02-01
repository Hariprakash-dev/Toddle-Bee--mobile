class CartProducts {
  String productname = "";
  String product = "";
  String color = "";
  CartProducts(
      {required this.productname, required this.product, required this.color});
}

List<CartProducts> products = [
  CartProducts(
      productname: "Boys T-Shirt",
      product: "assets/Dresses/image2.png",
      color: "Green"),
      CartProducts(
      productname: "Girls Frock",
      product: "assets/Dresses/image4.png",
      color: "Blue"),CartProducts(
      productname: "Kids Dress",
      product: "assets/Dresses/image5.png",
      color: "Red")
];
