class CategoryProducts {
  String product;
  String productname;

  CategoryProducts({
    required this.product,
    required this.productname,
  });
  }


  List<CategoryProducts> products = [
    CategoryProducts(
        product: "assets/Dresses/image2.png", productname: "Boys T-Shirt"),
         CategoryProducts(
        product: "assets/footwear/image2.png", productname: "Boys Shoe"),
         CategoryProducts(
        product: "assets/Toys/image2.png", productname: "Toys"),
        CategoryProducts(
        product: "assets/Dresses/image4.png", productname: "Frock Dress"),
         CategoryProducts(
        product: "assets/Dresses/image5.png", productname: "Kids Dress"),
         CategoryProducts(
        product: "assets/Toys/image1.png", productname: "Toys")
  ];
