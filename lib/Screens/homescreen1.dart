// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:toddle_bee_app/Provider/provider.dart';
// import 'package:toddle_bee_app/Screens/home_screen.dart';
// import 'package:toddle_bee_app/repo/api_service.dart';

// class HomeScreen1 extends StatefulWidget {
//   const HomeScreen1({super.key});

//   @override
//   State<HomeScreen1> createState() => _HomeScreen1State();
// }

// class _HomeScreen1State extends State<HomeScreen1> {
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((t) {
//       Provider.of<UserDataProvider>(context, listen: false).fetchUserData();
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<UserDataProvider>(
//       builder: (context, value, child) {
//         // logger.i(value.data["data"]);
//         List data = value.data["data"]["data"];
//         logger
//             .d("https://toddlebee.com/storage/product/${data[0]["thumbnail"]}");
//         return Scaffold(
//           appBar: AppBar(),
//           body: SafeArea(
//               child: ListView(
//             children: [
//               value.isLoading
//                   ? CircularProgressIndicator()
//                   : GridView.builder(
//                 physics: NeverScrollableScrollPhysics(),

//                       itemCount: data.length,
//                       // physics:  NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 2,
//                               mainAxisExtent: 215,
//                               mainAxisSpacing: 10,
//                               crossAxisSpacing: 10),
//                       itemBuilder: (context, index) {
//                         // logger.e();
//                         return Image.network(
//                           "https://toddlebee.com/storage/product/${data[index]["thumbnail"]}",
//                           errorBuilder: (context, error, stackTrace) =>
//                               Icon(Icons.error),
//                         );
//                       })
//             ],
//           )),
//         );
//       },
//     );
//   }
// }
