import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/curved_widgets/curved_egde_container.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeContainer(
      child: SizedBox(
        height: 400,
        child: Container(
          color: CustomColor.primary,
          padding: const EdgeInsets.only(bottom: 0),

          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularContainer(
                    color: CustomColor.white.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                      color: CustomColor.white.withOpacity(0.1))),
              child
            ],
          ),
        ),
      ),
    );
  }
}