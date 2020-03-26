import 'package:flutter/material.dart';

/// Header Cuadrado
class HeaderSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xff615AAB),
    );
  }
}

/// Al usar un BoxDecoration la propiedad colo tiene que ir dentro del
/// BoxDecoration si o si
class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0)
        )
      ),
    );
  }
}

/// Header Diagonal
class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // stroke solo son bordes // fill cuando lo queramos rellenar
    lapiz.strokeWidth = 5.0;

    final path = Path();

    // Dibujar con el path y el lapiz

    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);



    canvas.drawPath(path, lapiz);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}


/// Header Triangulo
class HeaderTriangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTrianguloPainter(),
      ),
    );
  }
}

class _HeaderTrianguloPainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // stroke solo son bordes // fill cuando lo queramos rellenar
    lapiz.strokeWidth = 5.0;

    final path = Path();

    // Dibujar con el path y el lapiz

    path.moveTo(0, 0);
    path.lineTo(size.width, size.height );
    path.lineTo(size.width, 0 );
    path.lineTo(0, 0);
// Invertido
//    path.moveTo(0, 0);
//    path.lineTo(size.width, size.height );
//    path.lineTo(0, size.height);




    canvas.drawPath(path, lapiz);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



/// Header Pico
class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPico(),
      ),
    );
  }
}

class _HeaderPico extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // stroke solo son bordes // fill cuando lo queramos rellenar
    lapiz.strokeWidth = 5.0;

    final path = Path();

    // Dibujar con el path y el lapiz

    path.moveTo(0, 0); // donde inicia el lapiz
    path.lineTo(0, size.height * 0.3 );
    path.lineTo(size.width * 0.5, size.height * 0.4 );
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // donde finaliza

    canvas.drawPath(path, lapiz);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}


/// Header Curvo
class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvo(),
      ),
    );
  }
}

class _HeaderCurvo extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // stroke solo son bordes // fill cuando lo queramos rellenar
    lapiz.strokeWidth = 5.0;

    final path = Path();

    // Dibujar con el path y el lapiz

    path.moveTo(0, 0); // donde inicia el lapiz
    path.lineTo(0, size.height * 0.3 );
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.5, size.width, size.height * 0.3);
    path.lineTo(size.width, 0 );
    path.lineTo(0, 0 );


    canvas.drawPath(path, lapiz);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



/// Header Curvo
class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // stroke solo son bordes // fill cuando lo queramos rellenar
    lapiz.strokeWidth = 5.0;

    final path = Path();

    // Dibujar con el path y el lapiz

    path.moveTo(0, 0); // donde inicia el lapiz
    path.lineTo(0, size.height * 0.25 );
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0 );
    path.lineTo(0, 0 );


    canvas.drawPath(path, lapiz);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}




