import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class  ImageNetwark_custom extends StatelessWidget {
   ImageNetwark_custom({required this.imageUrl,Key? key}) : super(key: key);
    String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: imageUrl,fit: BoxFit.fill
    ,errorWidget: (context, url, error) =>Center(child: Icon(Icons.error_outline_outlined)),
    );
  }
}
