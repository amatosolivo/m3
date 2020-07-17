import 'package:flutter/material.dart';
import 'package:superapp/contenido/Product_details.dart';
import 'package:superapp/widgets/search_bar.dart';

class Productos extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supper App',
      home: Products(),
    );
  }
}

class Products extends StatelessWidget {
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
            height: size.height * .25,
            decoration: BoxDecoration(
              color: Color(0xFFC2F2DA),
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
                    "Productos",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                  SearchBar(),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                color: Colors.white,
                                elevation: 14.0,
                                borderRadius: BorderRadius.circular(18.0),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 16.0),
                                        child: myDetailsContainer1(),
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      height: 110,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.topRight,
                                          image: NetworkImage(
                                              'http://restaurantelepanto.com/wp-content/uploads/2016/01/cccccccccccccccc.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
