import 'package:extended_image/extended_image.dart';
import 'package:flusmic_ui/flusmic_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType {
  DEFAULT,
  SVG,
}

///InnerRichImage
///
///Builds a widget with a image from RichText.
class InnerRichImage extends StatelessWidget {
  ///Default constructor
  const InnerRichImage(
    this.image, {
    Key? key,
    this.bottomSeparation = 16.0,
    this.failWidget,
    this.fit = BoxFit.cover,
    this.loadingWidget,
    this.type = ImageType.DEFAULT,
  }) : super(key: key);

  ///Separation between elements
  final double bottomSeparation;

  ///Widget to show if image loading fails
  final Widget? failWidget;

  ///Fit for image
  final BoxFit fit;

  ///Image from RichText
  final RichableImage image;

  ///Widget to show while loading image
  final Widget? loadingWidget;

  final ImageType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomSeparation),
      child: type == ImageType.DEFAULT
          ? ExtendedImage.network(
              image.url,
              fit: fit,
              height: image.dimensions.height,
              width: image.dimensions.width,
              loadStateChanged: (state) {
                if (state.extendedImageLoadState == LoadState.loading) {
                  return loadingWidget ?? Container();
                }
                return null;
              },
            )
          : SvgPicture.network(
              image.url,
              fit: fit,
              height: image.dimensions.height,
              width: image.dimensions.width,
            ),
    );
  }
}
