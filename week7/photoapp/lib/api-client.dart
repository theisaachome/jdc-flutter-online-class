import 'package:http/http.dart' as http;
import 'package:photoapp/product-model.dart';

Future<List<Product>> fetchProducts() async {
  const url = "https://fakestoreapi.com/products";

  final response = await http.get(url);

  final products = productFromJson(response.body);

  return products;
}
