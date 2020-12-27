import 'package:flutter/material.dart';
import 'package:photoapp/api-client.dart';
import 'package:photoapp/product-model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Product>> futureProducts;
  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: futureProducts,
          builder: (context, AsyncSnapshot<List<Product>> snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Product product = snapshot.data[index];
                  return GridTile(
                    child: Image.network(
                      product.image,
                      fit: BoxFit.contain,
                    ),
                    footer: Text("\$${product.price}"),
                  );
                },
              );
            } else if (!snapshot.hasData) {
              return Center(
                child: Text(
                  "Still Loading",
                  style: Theme.of(context).textTheme.headline4,
                ),
              );
            }
            return CircularProgressIndicator();
          },
        ));
  }
}
