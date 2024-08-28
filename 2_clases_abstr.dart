abstract class Empleado {
  String nombre;
  double salario;

  Empleado(this.nombre, this.salario);

  double calcularBonificacion();

  void mostrarDetalles() {
    print('Nombre: $nombre, Salario: S/.${salario.toStringAsFixed(2)}');
  }
}

class Gerente extends Empleado {
  Gerente(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBonificacion() {
    return salario * 0.2;
  }

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Bonificación: S/.${calcularBonificacion().toStringAsFixed(2)}');
  }
}

class Operario extends Empleado {
  Operario(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBonificacion() {
    return salario * 0.1;
  }

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Bonificación: S/.${calcularBonificacion().toStringAsFixed(2)}');
  }
}

void main() {
  var gerente = Gerente('Jhon', 5000);
  var operario = Operario('Luis', 3000);

  gerente.mostrarDetalles();
  operario.mostrarDetalles();
}
