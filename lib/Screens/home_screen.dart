import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Model/userdatamodel.dart';
import 'package:toddle_bee_app/Provider/favorite_provider.dart';
import 'package:toddle_bee_app/Provider/favoriteshow_provider.dart';
import 'package:toddle_bee_app/Provider/provider.dart';

// final logger = Logger();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showall = false;

  @override
  Widget build(BuildContext context) {
    // Call fetchUserData when screen is initialized
    // ignore: use_build_context_synchronously
    Future.microtask(() => context.read<UserDataProvider>().fetchUserData());

    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Consumer<UserDataProvider>(
            builder: (context, userDataProvider, child) {
          // logger.e("8r2VeEt8Zs.webp");
          if (userDataProvider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (userDataProvider.error.isNotEmpty) {
            return Center(
              child: Text(userDataProvider.error),
            );
            // } else if (userDataProvider.userData == null ||
            //     userDataProvider.userData!.data.isEmpty) {
            //   return  Center(child: Text("No data available"));
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 98,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            bottomRight: Radius.circular(22)),
                        color: AppColors.appbar),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: 25,
                                    )),
                                Text(
                                  "Tiruchirappalli",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 25,
                                    )),
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.notification_add,
                                      color: Colors.white,
                                      size: 25,
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: const Color.fromRGBO(249, 249, 249, 1),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          const Row(
                                            children: [
                                              Text(
                                                "New Arrival Baby’s",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        20, 20, 20, 1)),
                                              )
                                            ],
                                          ),
                                          const Row(
                                            children: [
                                              Text("Shoe Get",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromRGBO(
                                                          20, 20, 20, 1)))
                                            ],
                                          ),
                                          const Row(
                                            children: [
                                              Text("30% Off",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromRGBO(
                                                          20, 20, 20, 1)))
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 31,
                                                  width: 120,
                                                  child: TextButton(
                                                      onPressed: null,
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              WidgetStatePropertyAll(
                                                                  AppColors
                                                                      .orange),
                                                          shape: const WidgetStatePropertyAll(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              7))))),
                                                      child: const Text(
                                                        "Shop Now",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Color.fromRGBO(
                                                                    80,
                                                                    80,
                                                                    80,
                                                                    1)),
                                                      ))),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/footwear/image2.png",
                                            height: 95,
                                            width: 124,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(20, 20, 20, 1)),
                            ),
                            Text("See All",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(20, 20, 20, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 72,
                                  width: 70,
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  child: Image.asset(
                                    "assets/Toys/image3.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                const Text("Toys",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20, 20, 20, 1)))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 72,
                                  width: 70,
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  child:
                                      Image.asset("assets/Dresses/image6.png"),
                                ),
                                const Text("Boys Dress",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20, 20, 20, 1)))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 72,
                                  width: 70,
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  child:
                                      Image.asset("assets/Dresses/image7.png"),
                                ),
                                const Text("Girls Dress",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20, 20, 20, 1)))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 72,
                                  width: 70,
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  child:
                                      Image.asset("assets/footwear/image1.png"),
                                ),
                                const Text("Footwears",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20, 20, 20, 1)))
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Popular items",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(20, 20, 20, 1)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showall = !showall;
                                });
                              },
                              child: Text(showall ? "See less" : "See All",
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1))),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: GridView.builder(
                              itemCount: showall
                                  ? userDataProvider.userData!.data.data.length
                                  : 2,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: (150.0 / 220.0)),
                              itemBuilder: (BuildContext context, index) {
                                Datum datum =
                                    userDataProvider.userData!.data.data[index];
                                // logger.f(datum.toJson());

                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              185, 185, 185, 1))),
                                  child: Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              color: const Color.fromRGBO(
                                                  225, 242, 255, 1),
                                              child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Image.network(
                                                      "https://toddlebee.com/storage/product/${datum.thumbnail}",
                                                      height: 100,
                                                      width: 100,
                                                    ),
                                                  ),
                                                  Consumer<
                                                      FavoriteshowProvider>(
                                                    builder:
                                                        (BuildContext context,
                                                            favoriteProvider,
                                                            child) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            favoriteProvider
                                                                .favoritedata();
                                                            // favoriteProvider
                                                            //     .toggleFavorite(
                                                            //         "${datum.id}");
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              // color: favoriteProvider
                                                              //         .isFavorite(
                                                              //             index)
                                                              //     ? Colors
                                                              //         .orange
                                                              //     : null,
                                                            ),
                                                            child:
                                                                const Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: Icon(
                                                                Icons
                                                                    .favorite_border_sharp,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                maxLines: 3,
                                                datum.productName,
                                                style: const TextStyle(
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Row(
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
                                            Text(
                                              " (${datum.skuTable[0].ratings.toString()})",
                                              style:
                                                  const TextStyle(fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              // " 499",
                                              "₹${datum.skuTable[0].price.toString()}/-",

                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      12, 114, 185, 1)),
                                            ),
                                            Container(
                                              height: 34,
                                              width: 44,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10)),
                                                color: Colors.orange,
                                              ),
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        }));
  }
}
