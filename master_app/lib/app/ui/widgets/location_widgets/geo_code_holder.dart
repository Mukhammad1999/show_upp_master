import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GeoCodeHolder extends StatelessWidget {
  const GeoCodeHolder({
    super.key,
    this.geoCode,
  });
  final String? geoCode;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: GeoCodeClipBehavior(),
      child: Container(
        height: size.height / 6,
        padding: const EdgeInsets.only(
          left: 42,
          right: 42,
          bottom: 25,
        ),
        width: size.width,
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: geoCode != null
              ? Row(
                  children: [
                    const Icon(
                      Icons.place,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Flexible(
                      child: Text(
                        geoCode!,
                        maxLines: 2,
                      ),
                    ),
                  ],
                )
              : SpinKitThreeBounce(
                  color: Theme.of(context).primaryColor,
                  size: 15,
                ),
        ),
      ),
    );
  }
}

class GeoCodeClipBehavior extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - 25)
      ..lineTo(25, size.height - 25)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
