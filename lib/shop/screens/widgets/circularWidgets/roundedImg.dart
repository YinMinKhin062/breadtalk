import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class RoundedImage extends StatelessWidget {
  const RoundedImage(
      {super.key,
      this.width,
      this.height,
      required this.image,
      this.fit = BoxFit.cover,
      this.onTap,
      this.imgRadius = 16,
      this.imgContainerRadius = 16,
      this.imgColor,
      this.showImgBorder = false,
      this.margin});

  final double? width;
  final double? height;
  final String image;
  final BoxFit fit;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final double imgRadius;
  final double imgContainerRadius;
  final Color? imgColor;
  final bool showImgBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: showImgBorder
                ? Border.all(color: Colors.white, width: 2)
                : null,
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(imgContainerRadius)),
        width: width,
        height: height,
        margin: margin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(imgRadius),
          child: CachedNetworkImage(
            color: imgColor,
            fit: fit,
            imageUrl: image,
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  value: progress.progress,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
