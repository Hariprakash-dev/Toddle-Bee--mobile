import 'package:dotted_line/dotted_line.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

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
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        )),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Payments",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                   
                   
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 40)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(51, 210, 118, 1)),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                              const DottedLine(
                                direction: Axis.horizontal,
                                lineLength: 62,
                                lineThickness: 1.0,
                                dashLength: 2,
                                dashColor: Color.fromRGBO(12, 114, 185, 1),
                                dashGapLength: 4,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(51, 210, 118, 1)),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                              const DottedLine(
                                direction: Axis.horizontal,
                                lineLength: 62,
                                lineThickness: 1.0,
                                dashLength: 2,
                                dashColor: Color.fromRGBO(12, 114, 185, 1),
                                dashGapLength: 4,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(185, 185, 185, 1)),
                                child: const Center(
                                    child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Color.fromRGBO(12, 114, 185, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(185, 185, 185, 1)),
                              ),
                              Text(
                                "Select Product",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(185, 185, 185, 1)),
                              ),
                              Text(
                                "Payment",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(185, 185, 185, 1)),
                              )
                            ],
                          ),
        
                          const SizedBox(
                            height: 10,
                          ),
        
                          const Row(
                            children: [
                              Text("Payment methods",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(20, 20, 20, 1)))
                            ],
                          ),
        
                          const SizedBox(
                            height: 10,
                          ),
        
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                185, 185, 185, 1))),
                                  ),
                                  const SizedBox(width: 20,),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("UPI"),
                                        Text(
                                      "Paytm , Google Pay , Phone Pay                                     ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(185, 185, 185, 1)))
                                    ],
                                  ),
                                ],
                              ),
                             
        
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                185, 185, 185, 1))),
                                  ),
                                  const SizedBox(width: 20,),
                                  const Text("Wallet / Postpaid"),
                                ],
                              ),
                             
        
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                185, 185, 185, 1))),
                                  ),
                                  const SizedBox(width: 20,),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Credit Card / Debit Card"),
                                      Text(
                                      "Add and secure your card as per RBI guidelines          ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(185, 185, 185, 1)))
                                    ],
                                  ),
                                ],
                              ),
                             
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                185, 185, 185, 1))),
                                  ),
                                  const SizedBox(width: 20,),
                                  const Text("Net Banking"),
                                ],
                              ),
                              
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                185, 185, 185, 1))),
                                  ),
                                  const SizedBox(width: 20,),
                                  const Text("Cash on Delivery"),
                                ],
                              ),
                             
                            ],
                          ),
        
                          
        
                          const SizedBox(
                            height: 10,
                          ),
        
                          const Divider(
                           
                            color: Color.fromRGBO(233, 233, 233, 1),
                          ),
        
                          const SizedBox(
                            height: 10,
                          ),
        
                          const Row(
                            children: [Text("Price Details")],
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
                                            color: Color.fromRGBO(
                                                185, 185, 185, 1)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Price",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                185, 185, 185, 1)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Delivery Charges",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                185, 185, 185, 1)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Total Amount",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                185, 185, 185, 1)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
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
                                            color:
                                                Color.fromRGBO(20, 20, 20, 1)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹ 500.00",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(20, 20, 20, 1)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹ 50.00",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(20, 20, 20, 1)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹ 550.00",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(20, 20, 20, 1)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: null,
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            backgroundColor:
                                const Color.fromRGBO(255, 255, 255, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(185, 185, 185, 1)),
                            minimumSize: const Size(161, 45)),
                        child: const Text(
                          "View Price Details",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(20, 20, 20, 1)),
                        ),
                      ),
                     
                      TextButton(
                        onPressed: null,
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            backgroundColor:
                                const Color.fromRGBO(242, 141, 30, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(185, 185, 185, 1)),
                            minimumSize: const Size(161, 45)),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
