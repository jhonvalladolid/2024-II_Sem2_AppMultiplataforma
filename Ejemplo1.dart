class Persona {
  // Propiedades de la clase
  String nombre;
  int edad;

  // Constructor de la clase
  Persona(this.nombre, this.edad);

  // Método de la clase
  void mostrarDetalles() {
    print('Nombre: $nombre, Edad: $edad');
  }
}

void main() {
  // Creación de una instancia de la clase Persona
  var persona1 = Persona('Juan', 25);

  // Llamada al método mostrarDetalles
  persona1.mostrarDetalles();
}
