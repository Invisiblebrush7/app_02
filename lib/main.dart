import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mi Primera app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "San Francisco",
                        style: TextStyle(color: Colors.white, fontSize: 32.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Nublado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Colors.blue,
                          size: 60.0,
                        ),
                        Text(
                          "19 C",
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.yellow),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(SnackBar(
                                    content: Text(
                                  "Actualizando Datos...",
                                )));
                            },
                            child: Text(
                              "Actualizar Datos",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
