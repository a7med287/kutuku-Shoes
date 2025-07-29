import 'package:flutter/cupertino.dart';
import '../utiles/size_config.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    super.key, required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize ! * value,
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    super.key, required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize ! * value,
    );
  }
}