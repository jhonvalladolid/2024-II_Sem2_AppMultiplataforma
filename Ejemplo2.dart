class Persona {
  // Propiedades de la clase
  String nombre;
  int edad;
  String? direccion;

  // Constructor principal
  Persona(this.nombre, this.edad);

  // Constructor con nombre para incluir la dirección
  Persona.conDireccion(this.nombre, this.edad, this.direccion);

  // Método de la clase
  void mostrarDetalles() {
    print('Nombre: $nombre, Edad: $edad, Dirección: ${direccion ?? 'No proporcionada'}');
  }
}

void main() {
  // Usando el constructor principal
  var persona1 = Persona('Juan', 25);
  persona1.mostrarDetalles();

  // Usando el constructor con nombre
  var persona2 = Persona.conDireccion('Ana', 30, 'Calle Falsa 123');
  persona2.mostrarDetalles();
}
