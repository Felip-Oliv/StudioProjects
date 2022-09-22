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
      body:const MyCustomForm2(),
    );
  }
}

class ReuniaoPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reuniões'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              print('reunião 1 agendada');
            },
            leading: Icon(Icons.check_box),
            title: Text('22/09/2022'),
            subtitle: Text('apresentação do trabalho dev mobile'),
          ),
          ListTile(
            onTap: (){
              print('reunião 2 agendada');
            },
            leading: Icon(Icons.check_box),
            title: Text('25/09/2022'),
            subtitle: Text('comemoração de aniversário da empresa'),
          ),
        ],
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
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              print('Ciencia de dados');
            },
            leading: Icon(Icons.check_box),
            title: Text('22/09/2022'),
            subtitle: Text('apresentação do trabalho dev mobile'),
          ),
          ListTile(
            onTap: (){
              print('reunião 2 agendada');
            },
            leading: Icon(Icons.check_box),
            title: Text('25/09/2022'),
            subtitle: Text('comemoração de aniversário da empresa'),
          ),
        ],
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
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              print('reunião 1 agendada');
            },
            leading: Icon(Icons.check_box),
            title: Text('22/09/2022'),
            subtitle: Text('apresentação do trabalho dev mobile'),
          ),
          ListTile(
            onTap: (){
              print('reunião 2 agendada');
            },
            leading: Icon(Icons.check_box),
            title: Text('25/09/2022'),
            subtitle: Text('comemoração de aniversário da empresa'),
          ),
        ],
      ),
    );
  }
}
class ComprasPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compras Página'),
      ),
      body:ListView(
        children: [
          ListTile(
            onTap: (){
              print('pão');
            },
            leading: Icon(Icons.check_box),
            title: Text('22/09/2022'),
            subtitle: Text('padaria '),
          ),
          ListTile(
            onTap: (){
              print('teste');
            },
            leading: Icon(Icons.check_box),
            title: Text('queijo'),
            subtitle: Text('paderia'),
          ),
        ],
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
                return 'Digite o nome no campo';
              }
              return null;
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Digite o nome no campo';
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
                    const SnackBar(content: Text('Processando')),
                  );
                }
              },
              child: const Text('Cadastrar'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomForm2 extends StatefulWidget {
  const MyCustomForm2({super.key});

  @override
  MyCustomFormState2 createState() {
    return MyCustomFormState2();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState2 extends State<MyCustomForm2> {
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
                return 'Digite o nome da receita';
              }
              return null;
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Digite os ingredientes';
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
                    const SnackBar(content: Text('Processando')),
                  );
                }
              },
              child: const Text('Cadastrar'),
            ),
          ),
        ],
      ),
    );
  }
}