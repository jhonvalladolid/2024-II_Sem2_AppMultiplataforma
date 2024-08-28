abstract class Figura {
  double calcularArea();

  // Método normal
  void mostrarArea() {
    print('El área es: ${calcularArea()}');
  }
}

// Clase Circulo que hereda de Figura
class Circulo extends Figura {
  // Propiedad del Circulo
  double radio;

  // Constructor de la clase Circulo
  Circulo(this.radio);

  // Implementación del método abstracto calcularArea
  @override
  double calcularArea() {
    return 3.1416 * radio * radio;
  }
}

class Rectangulo extends Figura {
  // Propiedades del Rectangulo
  double largo;
  double ancho;

  // Constructor de la clase Rectangulo
  Rectangulo(this.largo, this.ancho);

  // Implementación del método abstracto calcularArea
  @override
  double calcularArea() {
    return largo * ancho;
  }
}

void main() {
  // Creación de una instancia de Circulo
  var circulo = Circulo(5);
  circulo.mostrarArea(); // Imprime: El área es: 78.54

  // Creación de una instancia de Rectangulo
  var rectangulo = Rectangulo(10, 5);
  rectangulo.mostrarArea(); // Imprime: El área es: 50.0
}
