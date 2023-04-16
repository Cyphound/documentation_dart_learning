void main() {

  // Se crea una instancia de la clase Rectangle con un ancho de 10 y un alto de 20.
  final myRectangle = Rectangle(width: 10, height: 20);

  // Se establece el ancho del rectángulo en -5.
  myRectangle.width = -5;

  // Se imprime el área del rectángulo utilizando el getter area.
  print('${myRectangle.area}');

}

// Clase Rectangle que representa un rectángulo con un ancho y una altura.
class Rectangle {

  // Atributos privados de la clase.
  double _width;
  double _height;

  // Constructor de la clase que recibe el ancho y la altura del rectángulo.
  Rectangle({required double width, required double height})
      : _width = width,
        _height = height;

  // Getter que devuelve el área del rectángulo.
  double get area {
    return _width * _height;
  }

  // Setter que establece el valor del ancho del rectángulo.
  set width(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Width must be >= 0';
    _width = value;
  }

  // Setter que establece el valor de la altura del rectángulo.
  set height(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Height must be >= 0';
    _height = value;
  }

}