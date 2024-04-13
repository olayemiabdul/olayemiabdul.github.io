
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyHoverBuilder extends StatefulWidget {
  const MyHoverBuilder({
    required this.builder,
    Key? key,
  }) : super(key: key);

  final Widget Function(bool isHovered) builder;
@override
_MyHoverBuilderState createState() => _MyHoverBuilderState();
}

class _MyHoverBuilderState extends State<MyHoverBuilder> {
  final hoverTransformed=Matrix4.identity()..scale(1.1)..translate(8,0.0,4);


  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    final transform=isHover?hoverTransformed:Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: ( event) => onHoverChanged(true),
      onExit: (event) => onHoverChanged(false),
      child: AnimatedContainer(duration: const Duration(milliseconds: 50),
      curve: Curves.easeIn,
      transform: transform,
      child: widget.builder(isHover)),
    );
  }

  void onHoverChanged( bool isHovered) {
    setState(() {
      isHover = isHovered;
    });
  }
}
