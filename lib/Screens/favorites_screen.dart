import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Provider/favorite_provider.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    super.initState();

    // Call the favoriteList method when the screen loads
    Future.microtask(() {
      Provider.of<FavouriteProvider>(context, listen: false).favoriteList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Consumer<FavouriteProvider>(
          builder: (context, fav, child) =>
             
              Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22)),
                    color: AppColors.appbar),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 35,
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Favorites",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 25,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: fav.favoriteData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(185, 185, 185, 1)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                    blurRadius: 40)
                              ]),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 111,
                                      width: 109,
                                      color: const Color.fromRGBO(
                                          225, 242, 255, 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Image.network(
                                            "https://toddlebee.com/storage/product/${fav.favoriteData[index]["product"]["thumbnail"]}"),
                                        // child: datum.product.thumbnail.isEmpty
                                        //     ? Text("null")
                                        //     : Image.network(
                                        //         "https://toddlebee.com/storage/product/${datum.product.thumbnail}",
                                        //         height: 100,
                                        //         width: 100,
                                        //       ),
                                      ))
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fav.favoriteData[index]["product"]
                                          ["sku_table"][0]["price"].toString(),
                                      style: const TextStyle(
                                          color: Color.fromRGBO(20, 20, 20, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    // datum.product.productName.isEmpty
                                    //     ? Text("null")
                                    //     : Text(
                                    //         "${datum.product.productName}",
                                    //         style: const TextStyle(
                                    //             color: Color.fromRGBO(
                                    //                 20, 20, 20, 1),
                                    //             fontSize: 16,
                                    //             fontWeight:
                                    //                 FontWeight.w500),
                                    //       ),
                                    const Icon(
                                      Icons.favorite,
                                      size: 15,
                                      color: Colors.orange,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: List.generate(
                                              5,
                                              (index) => const Icon(
                                                    Icons.star,
                                                    size: 10,
                                                    color: Colors.orange,
                                                  )),
                                        ),
                                        const Text(
                                          "(5)",
                                          style: TextStyle(fontSize: 8),
                                        )
                                      ],
                                    ),

                                    // const Row(
                                    //   children: [
                                    //     Text(
                                    //         "Lorem Ipsum is simply dummy text of the ",
                                    //         style: TextStyle(fontSize: 8))
                                    //   ],
                                    // ),
                                    // const Row(
                                    //   children: [
                                    //     Text(
                                    //       "printing and typesetting industry. Lorem ",
                                    //       style: TextStyle(fontSize: 8),
                                    //     )
                                    //   ],
                                    // ),
                                    // const Row(
                                    //   children: [
                                    //     Text(
                                    //         "Ipsum is simply dummy text of the printing",
                                    //         style: TextStyle(fontSize: 8))
                                    //   ],
                                    // ),
                                    // const Row(
                                    //   children: [
                                    //     Text("and typesetting industry.",
                                    //         style: TextStyle(fontSize: 8))
                                    //   ],
                                    // ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          // items[index].rate,
                                          "1",
                                          style: const TextStyle(
                                              color: Color.fromRGBO(
                                                  12, 114, 185, 1),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                            height: 25,
                                            width: 77,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                              color: Colors.orange,
                                            ),
                                            child: const Center(
                                                child: Text(
                                              "Buy Now",
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            )))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
