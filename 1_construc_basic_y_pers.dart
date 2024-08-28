class Vehiculo {
  String marca;
  String modelo;
  int anio;

  Vehiculo(this.marca, this.modelo, this.anio);

  void mostrarDetalles() {
    print('Marca: $marca, Modelo: $modelo, Año: $anio');
  }
}

class Auto extends Vehiculo {
  String tipoCombustible;

  Auto(String marca, String modelo, int anio, this.tipoCombustible)
      : super(marca, modelo, anio);

  Auto.electrico(String marca, String modelo, int anio)
      : this(marca, modelo, anio, 'Eléctrico');

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Tipo de Combustible: $tipoCombustible');
  }
}

void main() {
  var vehiculo1 = Vehiculo('Toyota', 'Corolla', 2020);
  vehiculo1.mostrarDetalles();

  var auto1 = Auto('Ford', 'Mustang', 2021, 'Gasolina');
  auto1.mostrarDetalles();

  var autoElectrico1 = Auto.electrico('Tesla', 'Model S', 2022);
  autoElectrico1.mostrarDetalles();
}
