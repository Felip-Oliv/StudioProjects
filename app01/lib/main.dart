import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("<--- Abra seus cadernos"),
          ),
          drawer: Drawer(child: MenuItens()),
          body: const MyCustomForm(),


            ),
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

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
