import 'package:flutter/material.dart';

void main() {
  //   print('hola, mundo desde flutter');
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplos de tipo tabla')),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tabla de tipo TABLE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Table(
                  border: TableBorder.all(),
                  children: [
                    //header
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Nombre'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Edad'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Numero'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Sexo'),
                        ),
                      ],
                    ),
                    //boody
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Maria'),
                        ),
                        Padding(padding: EdgeInsets.all(10), child: Text('25')),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('955521215'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Femenino'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Edgar'),
                        ),
                        Padding(padding: EdgeInsets.all(10), child: Text('30')),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('955521815'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Masculino'),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 40),
                Text(
                  'Tabla de tipo DATATABLE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),

                DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nombre',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Edad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Numero',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Sexo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('Maria')),
                        DataCell(Text('25')),
                        DataCell(Text('955521215')),
                        DataCell(Text('Femenino')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('Edgar')),
                        DataCell(Text('30')),
                        DataCell(Text('955521815')),
                        DataCell(Text('Masculino')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}