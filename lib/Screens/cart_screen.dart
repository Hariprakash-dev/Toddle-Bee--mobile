import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/List%20Products/cart_products.dart';
import 'package:toddle_bee_app/Screens/home_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
          children: [
            Container(
              height: 98,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22)),
                  color: AppColors.appbar),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          )),
                      const SizedBox(
                        width: 100,
                      ),
                      const Text(
                        " Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 5, bottom: 5),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 101,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: const Color.fromRGBO(185, 185, 185, 1)),
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
                                  height: 81,
                                  width: 95,
                                  color: const Color.fromRGBO(225, 242, 255, 1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(products[index].product),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    products[index].productname,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(20, 20, 20, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Color :",
                                    style: TextStyle(
                                        color: Color.fromRGBO(185, 185, 185, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    products[index].color,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(12, 114, 185, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 21,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      color: Color.fromRGBO(225, 242, 255, 1),
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "1",
                                    style: TextStyle(
                                        color: Color.fromRGBO(20, 20, 20, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 21,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      color: Color.fromRGBO(225, 242, 255, 1),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        1 /
                                        12,
                                  ),
                                  const Text(
                                    "₹ 499.00",
                                    style: TextStyle(
                                        color: Color.fromRGBO(12, 114, 185, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    backgroundColor: const Color.fromRGBO(242, 141, 30, 1),
                    side: const BorderSide(
                        color: Color.fromRGBO(185, 185, 185, 1)),
                  ),
                  child: const Text(
                    "Check Out",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
