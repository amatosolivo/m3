import 'package:flutter/material.dart';
import 'package:superapp/contenido/MisListas.dart';
import 'package:superapp/widgets/category_card.dart';
import 'package:superapp/widgets/constants.dart';
import 'package:superapp/widgets/search_bar.dart';

class inside_Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                  ),
                  Text(
                    "Buenos Dias \nMiguel",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Mis Listas",
                          image: "assets/images/listas.jpeg",
                          press: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MisListas()));
                          },
                        ),
                        CategoryCard(
                          title: "SuperMercados",
                          image: "assets/images/supers.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Productos",
                          image: "assets/images/productos.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Categorias",
                          image: "assets/images/appLogo.png",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}