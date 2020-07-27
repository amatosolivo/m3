import 'package:flutter/material.dart';
import 'package:superapp/contenido/Inside_Home.dart';
import 'package:superapp/widgets/ui/inicio/pagina_inico.dart';

class superMercados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supper App',
      home: market(),
    );
  }
}

class market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2AA467),
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('SuperMercados'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
        ),
      ),
      body: HomePage(),
    );
  }
}
