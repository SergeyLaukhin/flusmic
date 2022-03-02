import 'package:flusmic_ui/flusmic_ui.dart';
import 'package:flusmic_ui/src/widgets/dot_container.dart';
import 'package:flusmic_ui/src/widgets/rich_text.dart';
import 'package:flutter/material.dart';

///InnerRichText
///
///Builds a widget with a text and its spans.
class InnerListItem extends StatefulWidget {
  ///Default constructor
  const InnerListItem(
    this.text, {
    Key? key,
    this.bottomSeparation = 8.0,
    this.headline1Style,
    this.headline2Style,
    this.headline3Style,
    this.headline4Style,
    this.headline5Style,
    this.headline6Style,
    this.paragraphStyle,
  }) : super(key: key);

  ///Text from RichText
  final Richable text;

  ///Separation between elements
  final double bottomSeparation;

  ///Style for headline1
  ///
  ///Otherwise, is `TextTheme.headline1`
  final TextStyle? headline1Style;

  ///Style for headline2
  ///
  ///Otherwise, is `TextTheme.headline2`
  final TextStyle? headline2Style;

  ///Style for headline3
  ///
  ///Otherwise, is `TextTheme.headline3`
  final TextStyle? headline3Style;

  ///Style for headline4
  ///
  ///Otherwise, is `TextTheme.headline4`
  final TextStyle? headline4Style;

  ///Style for headline5
  ///
  ///Otherwise, is `TextTheme.headline5`
  final TextStyle? headline5Style;

  ///Style for headline6
  ///
  ///Otherwise, is `TextTheme.headline6`
  final TextStyle? headline6Style;

  ///Style for paragraph
  ///
  ///Otherwise, is `TextTheme.bodyText2`
  final TextStyle? paragraphStyle;

  @override
  _InnerListItemState createState() => _InnerListItemState();
}

class _InnerListItemState extends State<InnerListItem> {
  @override
  Widget build(BuildContext context) {
    return DotContainer(
      child: InnerRichText(
        widget.text,
        bottomSeparation: widget.bottomSeparation,
        headline1Style: widget.headline1Style,
        headline2Style: widget.headline2Style,
        headline3Style: widget.headline3Style,
        headline4Style: widget.headline4Style,
        headline5Style: widget.headline5Style,
        headline6Style: widget.headline6Style,
        paragraphStyle: widget.paragraphStyle,
      ),
    );
  }
}
