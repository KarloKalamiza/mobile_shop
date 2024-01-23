import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/curved_widgets/custom_curve_widget.dart';

class CurvedEdgeContainer extends StatelessWidget {
  const CurvedEdgeContainer({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CustomCurvedEdges(),
        child: child
    );
  }
}