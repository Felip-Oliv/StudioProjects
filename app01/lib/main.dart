import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("<--- Abra seus cadernos"),
          ),
          drawer: Drawer(child: MenuItens()),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Cadastre um novo caderno'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tipo',
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tema',
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}

class MenuItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const DrawerHeader(
          child: Text("Cadernos"),
        ),
        ListTile(
            title: Text("Receitas"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceitasPagina()),
              );
            }),
        ListTile(
            title: Text("Reunião"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReuniaoPagina()),
              );
            }),
        ListTile(
            title: Text("Compras"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComprasPagina()),
              );
            }),
        ListTile(
            title: Text("Estudos"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EstudosPagina()),
              );
            }),
        ListTile(
            title: Text("Agenda"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgendaPagina()),
              );
            }),
      ],
    );
  }
}

class ReceitasPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}

class ReuniaoPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}
class EstudosPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudos'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),

        ),
      ),
    );
  }
}
class AgendaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),

        ),
      ),
    );
  }
}
class ComprasPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terceira Página'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
      ],
    );
  }
}
