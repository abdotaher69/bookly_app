import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/AssetsData.dart';

class CustomListveiwItem extends StatelessWidget {
  const CustomListveiwItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: CachedNetworkImage(
          fit: BoxFit.cover,
            imageUrl: image,
                errorWidget: (context, url, error) => Center(child: const Icon(Icons.error)),

        )
      ),
    );
  }
}
