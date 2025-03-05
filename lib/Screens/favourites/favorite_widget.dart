import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Provider/all_provider.dart';
import 'package:toddle_bee_app/Provider/favorite_provider.dart';
import 'package:toddle_bee_app/cofig/enums.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key, required this.data, this.size});
  final Map data;
  final double? size;

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavouriteProvider>(
      builder: (context, provider, child) {
        bool isFavorite = provider.favoriteData.any((element) =>
            widget.data['product_id'] != null
                ? element['product_id'] == widget.data['product_id']
                : element['product_id'] == widget.data['id']);
        return InkWell(
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            if (provdAuth.userData.isEmpty) {
              // commonDialog(context, const LoginDialog());
            } else {
              Map<String, dynamic> favdata = {
                "id": widget.data['product_id'] ?? widget.data["id"],
                "isfav": isFavorite ? '1' : "0"
              };
              provider.favoriteAdd(favdata);
            }
          },
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_outline,
            color: targetDetailColor.secondary,
            size: widget.size,
          ),
        );
      },
    );
  }
}
