import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Lista no Grid";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(title),
            ),
            body: GridView.count(
                crossAxisCount: 3,
                children: List.generate(opcoes.length, (index) {
                  return Center(
                    child: OpcaoCard(opcao: opcoes[index]),
                  );
                }))));
  }
}

class Opcao {
  const Opcao({required this.titulo, required this.icon});

  final String titulo;
  final IconData icon;
}

const List<Opcao> opcoes = <Opcao>[
  Opcao(titulo: 'Carro', icon: Icons.directions_car),
  Opcao(titulo: 'Bike', icon: Icons.directions_bike),
  Opcao(titulo: 'Barco', icon: Icons.directions_boat),
  Opcao(titulo: 'Ônibus', icon: Icons.directions_bus),
  Opcao(titulo: 'Trem', icon: Icons.directions_railway),
  Opcao(titulo: 'Andar', icon: Icons.directions_walk),
  Opcao(titulo: 'Carro', icon: Icons.directions_car),
  Opcao(titulo: 'Tarefas', icon: Icons.drafts),
  Opcao(titulo: 'Monitor', icon: Icons.dvr),
  Opcao(titulo: 'Copy', icon: Icons.copyright),
  Opcao(titulo: 'Nuvem', icon: Icons.cloud_off),
  Opcao(titulo: 'Bike', icon: Icons.directions_bike),
  Opcao(titulo: 'Barco', icon: Icons.directions_boat),
  Opcao(titulo: 'Ônibus', icon: Icons.directions_bus),
  Opcao(titulo: 'Trem', icon: Icons.directions_railway),
  Opcao(titulo: 'Andar', icon: Icons.directions_walk),
  Opcao(titulo: 'Carro', icon: Icons.directions_car),
  Opcao(titulo: 'Bike', icon: Icons.directions_bike),
  Opcao(titulo: 'Barco', icon: Icons.directions_boat),
  Opcao(titulo: 'Ônibus', icon: Icons.directions_bus),
  Opcao(titulo: 'Trem', icon: Icons.directions_railway),
  Opcao(titulo: 'Andar', icon: Icons.directions_walk),
  Opcao(titulo: 'Carta', icon: Icons.drafts),
  Opcao(titulo: 'Bike', icon: Icons.directions_bike),
  Opcao(titulo: 'Barco', icon: Icons.directions_boat),
  Opcao(titulo: 'Ônibus', icon: Icons.directions_bus),
  Opcao(titulo: 'Trem', icon: Icons.directions_railway),
  Opcao(titulo: 'Andar', icon: Icons.directions_walk),
  Opcao(titulo: 'Monitor', icon: Icons.dvr),
];

class OpcaoCard extends StatelessWidget {
  const OpcaoCard({Key? key, required this.opcao}) : super(key: key);
  final Opcao opcao;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;

    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(opcao.icon, size: 40.0, color: textStyle!.color),
                Text(opcao.titulo, style: textStyle),
              ]),
        ));
  }
}
