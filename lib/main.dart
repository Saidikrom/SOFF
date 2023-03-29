import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soff/presentation/home/bottom_bar.dart';
import 'package:soff/providers/categories.dart';

import 'presentation/cart/cart_page.dart';
import 'presentation/home/product item page/product_item_page.dart';
import 'providers/cart.dart';
import 'providers/grid_items.dart';
import 'providers/products.dart';
import 'providers/profile_images.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Products>(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider<GridItems>(
          create: (_) => GridItems(),
        ),
        ChangeNotifierProvider<Categories>(
          create: (_) => Categories(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider<ProfileImages>(
          create: (_) => ProfileImages(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomBottomAppBar(isTrue: false),
        routes: {
          ProductItemPage.routName: (ctx) => ProductItemPage(),
          CartPage.routName: (ctx) => CartPage(),
          CustomBottomAppBar.routName: (ctx) => CustomBottomAppBar(isTrue: false),
        },
      ),
    );
  }
}
