class FavoriteProducts {
  String product = "";
  String rate = "";
   String productname = "";
  FavoriteProducts({
    required this.product,
    required this.rate,
    required this.productname,
  });
  }
  List<FavoriteProducts> items = [
    FavoriteProducts(product: "assets/Dresses/image2.png", rate: "₹ 499.00",productname: "Boys T-Shirt"),
     FavoriteProducts(product: "assets/Dresses/image4.png", rate: "₹ 399.00",productname: "Girls Frock"),
     FavoriteProducts(product: "assets/Dresses/image5.png", rate: "₹ 499.00",productname: "Kids Dress"),
     FavoriteProducts(product: "assets/Dresses/image1.png", rate: "₹ 599.00",productname: "Boys Shirt"),
     FavoriteProducts(product: "assets/footwear/image2.png", rate: "₹ 699.00",productname: "Shoe"),
      FavoriteProducts(product: "assets/Toys/image1.png", rate: "₹ 199.00",productname: "Toys"),
       FavoriteProducts(product: "assets/Toys/image2.png", rate: "₹ 299.00",productname: "Toys") ,
    
  ];

