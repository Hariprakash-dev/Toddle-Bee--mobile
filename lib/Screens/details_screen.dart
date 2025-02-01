import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Colors/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 98,
                width: MediaQuery.of(context).size.width,
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
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 35,
                            )),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Product Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 40,
                        ),
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
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                        height: 283,
                        width: 325,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(225, 242, 255, 1),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SizedBox(
                                height: 265,
                                width: 287,
                                child: Image.asset(
                                  "assets/Dresses/image1.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.favorite_border))
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Boys Half - Shirt",
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1 / 15,
                        ),
                        const FloatingActionButton.small(
                          onPressed: null,
                          child: Icon(Icons.add),
                        ),
                        const Text(
                          "1",
                          style: TextStyle(fontSize: 22),
                        ),
                        const FloatingActionButton.small(
                          onPressed: null,
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("Vado Odello Dress"),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                            children: List.generate(
                                5,
                                (index) => const Icon(
                                      Icons.star,
                                      size: 15,
                                    ))),
                        const Text(
                          "(120 Reviews)",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1 / 8,
                        ),
                        const Text(
                          "Available in stock",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(12, 114, 185, 1)),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.green),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))))),
                          child: Text("Price"),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text("50% off",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1,000",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "₹500.00",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(12, 114, 185, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Size",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        ),
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              side: const BorderSide(
                                  color: Color.fromRGBO(233, 233, 233, 1))),
                          child: const Text(
                            "Size chart",
                            style: TextStyle(
                                color: Color.fromRGBO(12, 114, 185, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text(
                            "S",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text("M",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400))),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text("L",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400))),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text("XL",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400))),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Delivery Address",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        ),
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              side: const BorderSide(
                                  color: Color.fromRGBO(233, 233, 233, 1))),
                          child: const Text(
                            "Change",
                            style: TextStyle(
                                color: Color.fromRGBO(12, 114, 185, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "Jhon Doe",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "51 , Raja street, Tiruchirappalli - 620013",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "Landmark :  Nearby TKNR Store.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/image2.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Delivery on 11 July (Tuesday)2023",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/image1.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "5 days return policy",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/image3.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Cash on delivery Available",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the ")
                      ],
                    ),
                    const Row(
                      children: [
                        Text("printing and typesetting industry. Lorem ")
                      ],
                    ),
                    const Row(
                      children: [
                        Text("Ipsum is simply dummy text of the printing")
                      ],
                    ),
                    const Row(
                      children: [Text("and typesetting industry.")],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Pack of",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(185, 185, 185, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Fabric",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(185, 185, 185, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sleeve",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(185, 185, 185, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Pattern",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(185, 185, 185, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Color",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(185, 185, 185, 1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 100),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Cotton",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Half Sleeve",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Checked",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Multicolor",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1)),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.5,
                      color: Color.fromRGBO(233, 233, 233, 1),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Related Products",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    Row(
                      children: [
                          Container(
                            height: 208,
                            width: 138,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                    color: const Color.fromRGBO(
                                        185, 185, 185, 1))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 125,
                                        width: 115,
                                        color: const Color.fromRGBO(
                                            225, 242, 255, 1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            "assets/Dresses/image1.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Boys Shirt",
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
                                    children: [
                                      const Text(
                                        "₹ 499/-",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                12, 114, 185, 1)),
                                      ),
                                      const SizedBox(
                                        width: 32,
                                        height: 34,
                                      ),
                                      Container(
                                        height: 34,
                                        width: 44,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10)),
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
                          ),


                          const SizedBox(width: 22,),



                             


                           Container(
                            height: 208,
                            width: 138,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                    color: const Color.fromRGBO(
                                        185, 185, 185, 1))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 125,
                                        width: 115,
                                        color: const Color.fromRGBO(
                                            225, 242, 255, 1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            "assets/Dresses/image2.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Boys Shirt",
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
                                    children: [
                                      const Text(
                                        "₹ 499/-",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                12, 114, 185, 1)),
                                      ),
                                      const SizedBox(
                                        width: 32,
                                        height: 34,
                                      ),
                                      Container(
                                        height: 34,
                                        width: 44,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10)),
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
                          ),
                      ],
                    ),




                        
                    
                   
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
