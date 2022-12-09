```
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class Mipaint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Mipagina(),
      ),
    );
  }
}

class Mipagina extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = new Paint();
    paint.color=Colors.blue;
    paint.style = PaintingStyle.fill;
    paint.strokeCap = StrokeCap.round; 
    paint.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0,size.height*0.5);
    path.lineTo(size.width*0.1, size.height*0.4);
    path.lineTo(size.width*0.9,size.height*0.4);
    path.lineTo(size.width,size.height*0.3);
    path.lineTo(size.width,0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
```
