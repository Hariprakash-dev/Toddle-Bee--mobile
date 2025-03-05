import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Provider/product_provider.dart';
import 'package:toddle_bee_app/Screens/favourites/favorite_widget.dart';
import 'package:toddle_bee_app/cofig/enums.dart';
import 'package:toddle_bee_app/constants/fonts.dart';
import 'package:toddle_bee_app/constants/gaps.dart';


class PopularProductTile extends StatefulWidget {
  const PopularProductTile(
      {super.key, required this.product, required this.width});
  final Map product;
  final double width;

  @override
  State<PopularProductTile> createState() => _PopularProductTileState();
}

class _PopularProductTileState extends State<PopularProductTile> {
  @override
  Widget build(BuildContext context) {
    // var listFirstImage =
    //     widget.product["images"] == null || widget.product["images"].isEmpty
    //         ? "assets/images/Place_Holder.png"
    //         : widget.product["images"].first["images"];
    var listFirstAmount = widget.product["sku_table"] == null ||
            widget.product["sku_table"].isEmpty
        ? "0"
        : widget.product["sku_table"].first["price"];
    return Consumer<ProductProvider>(
      builder: (context, prod, child) {
        var price = widget.product["sku_table"] == null
            ? "0"
            : widget.product["sku_table"][0]["price"] ?? 1;
        var discountPrice = widget.product["sku_table"] == null
            ? "0"
            : widget.product["sku_table"][0]["discount_price"] ?? 1;
        var offer = widget.product["sku_table"] == null
            ? "0"
            : ((discountPrice - price) / price * 100).round();
        return Row(children: [
          Container(
              width: widget.width,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: const Color(0xffe0e0e0))),
              child: LayoutBuilder(
                builder: (p0, p1) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: const Alignment(0.8, -0.8),
                          children: [
                            Container(
                                height: 160,
                                width: p1.maxWidth,
                                padding: const EdgeInsets.all(18),
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: targetDetailColor.primaryLight,
                                ),
                                child: Image.network("${targetDetail.imgurl}product/${widget.product["thumbnail"]}",)
),
                            FavouriteWidget(data: widget.product)
                          ],
                        ),
                      ),
                      Container(
                        height: 84, // Height is conditionally set
                        padding: const EdgeInsets.only(
                          right: 12,
                          left: 12,
                          bottom: 6,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textW600(
                                          "${widget.product["product_name"]}",
                                          size: 12,
                                          color: targetDetailColor.pureDark,
                                          lines: 1),
                                      hgap6px(),
                                      // const RatingStars(),
                                    ]),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    textW500Price('₹ $listFirstAmount',
                                        color: targetDetailColor.primary,
                                        size: 18),
                                    wgap4(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.green),
                                      child: textW500('$offer % off',
                                          color: targetDetailColor.pureWhite,
                                          size: 12),
                                    ),
                                    // AddtoCartWidget(data: widget.product)
                                  ]),
                            ]),
                      ),
                    ]),
              )),
        ]);
      },
    );
  }
}

// class RelatedProductTile extends StatelessWidget {
//   const RelatedProductTile({super.key, required this.product});
//   final Map product;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 220,
//         width: 180,
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         decoration: BoxDecoration(
//             borderRadius: const BorderRadius.all(
//               Radius.circular(10),
//             ),
//             border: Border.all(color: targetDetailColor.grey)),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Expanded(
//             child: Stack(
//               alignment: const Alignment(0.8, -0.8),
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       height: 120,
//                       width: 180,
//                       padding: const EdgeInsets.all(18),
//                       margin: const EdgeInsets.all(6),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: targetDetailColor.primaryLight,
//                       ),
//                       child: Image.asset("${product["image"]}",
//                           width: 160, fit: BoxFit.fitHeight),
//                     ),
//                   ],
//                 ),
//                 FavouriteWidget(data: product)
//               ],
//             ),
//           ),
//           Container(
//             height: 86,
//             padding: const EdgeInsets.only(right: 12, left: 12, bottom: 6),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: 40,
//                         child: textW700("${product["product_name"]}",
//                             size: 12,
//                             color: targetDetailColor.pureDark,
//                             lines: 2),
//                       ),
//                       hgap6px(),
//                       const RatingStars(),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       textW700('₹ ${product["off_price"]}',
//                           color: targetDetailColor.primary, size: 18),
//                       buttonSmallWithIcon(context, "Add Cart", () {
//                         notif("Hurray!", "Product Added SuccessFully");
//                       },
//                           height: 28.0,
//                           txtsize: 12.0,
//                           color: targetDetailColor.secondary,
//                           icon: Icons.add,
//                           radius: BorderRadius.circular(3))
//                     ],
//                   ),
//                 ]),
//           ),
//         ]));
//   }
// }
