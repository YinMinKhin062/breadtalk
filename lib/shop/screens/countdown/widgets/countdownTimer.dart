import 'package:flutter/material.dart';

import '../../widgets/circularWidgets/roundedContainer.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer(
      {super.key, required this.timeVal, required this.txtVal});

  final String timeVal;
  final String txtVal;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedContainer(
          showBoxShadow: true,
          bgColor: Colors.white,
          borderRadius: BorderRadius.circular(10),
          padding: const EdgeInsets.all(8),
          child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                      colors: <Color>[Colors.blue, Colors.grey, Colors.orange],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      tileMode: TileMode.clamp)
                  .createShader(bounds);
            },
            child: Text(
              timeVal,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        const SizedBox(
          height: 16 / 2,
        ),
        Text(
          txtVal,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10,color: Colors.black.withOpacity(.4)),
        )
      ],
    );
  }
}
