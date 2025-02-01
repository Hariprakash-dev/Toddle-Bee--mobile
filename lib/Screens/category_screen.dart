import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/List%20Products/category_products.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                              "Category",
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
                                  IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.notification_add,
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: GridView.builder(
                    itemCount: products.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 190,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(185, 185, 185, 1))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color.fromRGBO(225, 242, 255, 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset(
                                                  products[index].product,
                                                  height: 100,
                                                  width: 100,
                                                ),
                                              ],
                                            ),
                                            const Column(
                                              children: [
                                               
                                                Icon(
                                                  Icons.favorite_border,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    products[index].productname,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
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
                                  const Text(
                                    "(5)",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "₹ 499/-",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(12, 114, 185, 1)),
                                  ),
                                  
                                  Container(
                                      height: 25,
                                      width: 59,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(3),
                                            bottomLeft: Radius.circular(3)),
                                        color: Colors.orange,
                                      ),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                          Text(
                                            "Add to cart",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          )
                                        ],
                                      ))
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
        ));
  }
}
