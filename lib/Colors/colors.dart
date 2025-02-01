import 'package:flutter/widgets.dart';

class AppColors {
  static var backgroundColor = const Color(0xFFFFFFFF);
  static var appbar = const Color(0xFF0C72B9);
  static var orange = const Color.fromRGBO(242, 141, 30, 1);
}





// import 'package:flutter/material.dart';
// import 'package:toddle_bee_app/Colors/colors.dart';
// import 'package:toddle_bee_app/Model/userdatamodel.dart';
// import 'package:toddle_bee_app/repo/api_service.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late Future<FetchUserData> userData;

//   final ApiService fetchdata = ApiService();

//   @override
//   void initState() {
   
//     super.initState();
//     userData = fetchdata.details();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundColor,
//       body: FutureBuilder(
//         future: userData,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             return const Center(
//               child: Text("Error"),
//             );
//           } else if (!snapshot.hasData || snapshot.data!.data.isEmpty) {
//             return const Center(child: Text("No data"));
//           } else {
           
//             return SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   Container(
//                     height: 98,
//                     decoration: BoxDecoration(
//                         borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(22),
//                             bottomRight: Radius.circular(22)),
//                         color: AppColors.appbar),
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Row(
//                               children: [
//                                 IconButton(
//                                     onPressed: null,
//                                     icon: Icon(
//                                       Icons.location_on,
//                                       color: Colors.white,
//                                       size: 25,
//                                     )),
//                                 Text(
//                                   "Tiruchirappalli",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Row(
//                               children: [
//                                 IconButton(
//                                     onPressed: null,
//                                     icon: Icon(
//                                       Icons.search,
//                                       color: Colors.white,
//                                       size: 25,
//                                     )),
//                                 IconButton(
//                                     onPressed: null,
//                                     icon: Icon(
//                                       Icons.notification_add,
//                                       color: Colors.white,
//                                       size: 25,
//                                     )),
//                               ],
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       children: [
//                         Card(
//                           elevation: 5,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           color: const Color.fromRGBO(249, 249, 249, 1),
//                           child: Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Row(
//                               children: [
//                                 Column(
//                                   children: [
//                                     const Row(
//                                       children: [
//                                         Text(
//                                           "New Arrival Baby’s",
//                                           style: TextStyle(
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Color.fromRGBO(
//                                                   20, 20, 20, 1)),
//                                         )
//                                       ],
//                                     ),
//                                     const Row(
//                                       children: [
//                                         Text("Shoe Get",
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.w400,
//                                                 color: Color.fromRGBO(
//                                                     20, 20, 20, 1)))
//                                       ],
//                                     ),
//                                     const Row(
//                                       children: [
//                                         Text("30% Off",
//                                             style: TextStyle(
//                                                 fontSize: 30,
//                                                 fontWeight: FontWeight.w500,
//                                                 color: Color.fromRGBO(
//                                                     20, 20, 20, 1)))
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         SizedBox(
//                                             height: 31,
//                                             width: 120,
//                                             child: TextButton(
//                                                 onPressed: null,
//                                                 style: ButtonStyle(
//                                                     backgroundColor:
//                                                         WidgetStatePropertyAll(
//                                                             AppColors.orange),
//                                                     shape: const WidgetStatePropertyAll(
//                                                         RoundedRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius.all(
//                                                                     Radius.circular(
//                                                                         7))))),
//                                                 child: const Text(
//                                                   "Shop Now",
//                                                   style: TextStyle(
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       color: Color.fromRGBO(
//                                                           80, 80, 80, 1)),
//                                                 ))),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Image.asset(
//                                       "assets/footwear/image2.png",
//                                       height: 95,
//                                       width: 124,
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         const Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Category",
//                               style: TextStyle(
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color.fromRGBO(20, 20, 20, 1)),
//                             ),
//                             Text("See All",
//                                 style: TextStyle(
//                                     fontSize: 11,
//                                     fontWeight: FontWeight.w500,
//                                     color: Color.fromRGBO(20, 20, 20, 1))),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Container(
//                                   height: 72,
//                                   width: 70,
//                                   color: const Color.fromRGBO(249, 249, 249, 1),
//                                   child: Image.asset(
//                                     "assets/Toys/image3.png",
//                                     height: 40,
//                                     width: 40,
//                                   ),
//                                 ),
//                                 const Text("Toys",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400,
//                                         color: Color.fromRGBO(20, 20, 20, 1)))
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Container(
//                                   height: 72,
//                                   width: 70,
//                                   color: const Color.fromRGBO(249, 249, 249, 1),
//                                   child:
//                                       Image.asset("assets/Dresses/image6.png"),
//                                 ),
//                                 const Text("Boys Dress",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400,
//                                         color: Color.fromRGBO(20, 20, 20, 1)))
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Container(
//                                   height: 72,
//                                   width: 70,
//                                   color: const Color.fromRGBO(249, 249, 249, 1),
//                                   child:
//                                       Image.asset("assets/Dresses/image7.png"),
//                                 ),
//                                 const Text("Girls Dress",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400,
//                                         color: Color.fromRGBO(20, 20, 20, 1)))
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Container(
//                                   height: 72,
//                                   width: 70,
//                                   color: const Color.fromRGBO(249, 249, 249, 1),
//                                   child:
//                                       Image.asset("assets/footwear/image1.png"),
//                                 ),
//                                 const Text("Footwears",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400,
//                                         color: Color.fromRGBO(20, 20, 20, 1)))
//                               ],
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         const Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Popular items",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color.fromRGBO(20, 20, 20, 1)),
//                             ),
//                             Text("See All",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w500,
//                                     color: Color.fromRGBO(20, 20, 20, 1))),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 12, right: 12),
//                           child: GridView.builder(
//                               itemCount: 2,
//                               // physics: const NeverScrollableScrollPhysics(),
//                               shrinkWrap: true,
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                       crossAxisCount: 2,
//                                       mainAxisExtent: 193,
//                                       mainAxisSpacing: 10,
//                                       crossAxisSpacing: 10),
//                               itemBuilder: (BuildContext context, index) {
//                                  final user = snapshot.data!.data[index];
//                                 return Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(6),
//                                       color: const Color.fromRGBO(
//                                           255, 255, 255, 1),
//                                       border: Border.all(
//                                           color: const Color.fromRGBO(
//                                               185, 185, 185, 1))),
//                                   child: Column(
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             child: Container(
//                                               color: const Color.fromRGBO(
//                                                   225, 242, 255, 1),
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(3.0),
//                                                 child: Row(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.end,
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceBetween,
//                                                   children: [
//                                                     Column(
//                                                       children: [
//                                                         Image.asset(
//                                                           "assets/Dresses/image2.png",
//                                                           height: 100,
//                                                           width: 100,
//                                                         ),
//                                                       ],
//                                                     ),
//                                                     const Column(
//                                                       children: [
//                                                         Icon(
//                                                           Icons
//                                                               .favorite_border_outlined,
//                                                           size: 15,
//                                                         ),
//                                                       ],
//                                                     )
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                        Padding(
//                                         padding: const EdgeInsets.only(left: 8.0),
//                                         child: Row(
//                                           children: [
//                                             Text(
//                                             user.categoryName ,
//                                               style: const TextStyle(
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.bold,
//                                                   color: Colors.black),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(left: 8.0),
//                                         child: Row(
//                                           children: [
//                                             Row(
//                                               children: List.generate(
//                                                   5,
//                                                   (index) => const Icon(
//                                                         Icons.star,
//                                                         size: 10,
//                                                         color: Colors.orange,
//                                                       )),
//                                             ),
//                                             const Text(
//                                               "(5)",
//                                               style: TextStyle(fontSize: 8),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 8),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.end,
//                                           children: [
//                                             const Text(
//                                               "₹ 499/-",
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w500,
//                                                   color: Color.fromRGBO(
//                                                       12, 114, 185, 1)),
//                                             ),
//                                             Container(
//                                               height: 34,
//                                               width: 44,
//                                               decoration: const BoxDecoration(
//                                                 borderRadius: BorderRadius.only(
//                                                     topLeft:
//                                                         Radius.circular(10)),
//                                                 color: Colors.orange,
//                                               ),
//                                               child: const Icon(
//                                                 Icons.add,
//                                                 color: Colors.white,
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 );
//                               }),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }









