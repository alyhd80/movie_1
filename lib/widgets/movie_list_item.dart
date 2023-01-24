import 'package:flutter/material.dart';
import 'package:movie_app/screens/movie_screen.dart';

class MovieListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String information;
  final GlobalKey backroundImageKey = GlobalKey();

  MovieListItem(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.information})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Flow(
                  delegate: _parallaxFlowDekegate(
                      scrollable: Scrollable.of(context)!,
                      listItemContenxt: context,
                      backgroundImageKey: backroundImageKey),
                  children: [
                    Hero(
                      
                      tag: imageUrl,
                      child: Image.network(
                        imageUrl,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        key: backroundImageKey,
                      ),
                    ),
                  ]),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.6, 0.95]),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      information,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _parallaxFlowDekegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContenxt;
  final GlobalKey backgroundImageKey;

  _parallaxFlowDekegate(
      {required this.scrollable,
      required this.listItemContenxt,
      required this.backgroundImageKey})
      : super(repaint: scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    ///calculate the position of the list time within view port
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContenxt.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
        listItemBox.size.centerLeft(Offset.zero),
        ancestor: scrollableBox);

    ///detemine tge percent position of tge list item within tge scrollable  area
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(0, 1);

    ///calcylate the alignment of the background based on the scrool percens
    final verticalAligment = Alignment(0, scrollFraction * 2 - 1);

    ///convert tge background aligmnet into a pixle offset for painting purposes

    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAligment.inscribe(backgroundSize, Offset.zero & listItemSize);

    /// paint the background
    context.paintChild(0,
        transform:
            Transform.translate(offset: Offset(0, childRect.top)).transform);
  }

  @override
  bool shouldRepaint(covariant _parallaxFlowDekegate oldDelegate) {
    // TODO: implement shouldRepaint
    return scrollable != oldDelegate.scrollable ||
        listItemContenxt != oldDelegate.listItemContenxt ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
