

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Model/userdatamodel.dart';
import 'package:toddle_bee_app/Provider/provider.dart';
import 'package:toddle_bee_app/Screens/favourites/favorite_widget.dart';

class ProductTitle extends StatefulWidget {
  const ProductTitle({super.key,required this.product});
   final Map product;

  @override
  State<ProductTitle> createState() => _ProductTitleState();
}

class _ProductTitleState extends State<ProductTitle> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<UserDataProvider>(
      builder: (context, userDataProvider, child) => 
      Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: GridView.builder(
                                itemCount: 
                                     userDataProvider.userData!.data.data.length,
                                    
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

                                                    FavouriteWidget(data: widget.product)
                                                    // Padding(
                                                    //   padding:
                                                    //       const EdgeInsets
                                                    //           .all(5.0),
                                                    //   child: GestureDetector(
                                                    //     onTap: () {
                                                        
                                                         
                                                    //     },
                                                    //     child: Container(
                                                    //       decoration:
                                                    //           const BoxDecoration(
                                                    //         shape: BoxShape
                                                    //             .circle,
                                                    //         // color: favoriteProvider
                                                    //         //         .isFavorite(
                                                    //         //             index)
                                                    //         //     ? Colors
                                                    //         //         .orange
                                                    //         //     : null,
                                                    //       ),
                                                    //       child:
                                                    //           const Padding(
                                                    //         padding:
                                                    //             EdgeInsets
                                                    //                 .all(2.0),
                                                    //         child: Icon(
                                                    //           Icons
                                                    //               .favorite_border_sharp,
                                                    //           color: Colors
                                                    //               .black,
                                                    //         ),
                                                    //       ),
                                                    //     ),
                                                    //   ),
                                                    // ),
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
                          ),
    );

  }
}