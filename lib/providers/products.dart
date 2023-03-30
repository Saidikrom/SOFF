import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _list = [
    Product(
      id: "p1",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло руководительское STRANGER",
      rating: "Rating:3 (Medium)",
      price: 94.5,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/1.jpg",
    ),
    Product(
      id: "p2",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло игровое ROBOT черный",
      rating: "Rating:3 (Medium)",
      price: 420.92,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/chair.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/2.jpg",
    ),
    Product(
      id: "p3",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло для персонала DUOREST A683 серый",
      rating: "Rating:3 (Medium)",
      price: 172.04,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/egg_chair.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/3.jpg",
    ),
    Product(
      id: "p4",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: false,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло руководительское STRANGER (CM-F85A) синий",
      rating: "Rating:3 (Medium)",
      price: 270.67,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/folding_bed.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/4.jpg",
    ),
    Product(
      id: "p5",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: false,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло для персонала DUOREST A683 зеленый",
      rating: "Rating:3 (Medium)",
      price: 172.04,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/office_chair.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/5.jpg",
    ),
    Product(
      id: "p6",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское MIREI черный",
      rating: "Rating:3 (Medium)",
      price: 30.97,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/sofa.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/6.jpg",
    ),
    Product(
      id: "p7",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское MIREI синий",
      rating: "Rating:3 (Medium)",
      price: 30.97,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/office_chair.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/7.jpg",
    ),
    Product(
      id: "p8",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское MIREI красный",
      rating: "Rating:3 (Medium)",
      price: 30.97,
      arUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/models/office_chair_red.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/8.jpg",
    ),
    Product(
      id: "p9",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: false,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло руководительское MILES A2003 серый",
      rating: "Rating:3 (Medium)",
      price: 387.66,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/9.jpg",
    ),
    Product(
      id: "p10",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: false,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло посетительское DAMARIS (C67) чёрный",
      rating: "Rating:3 (Medium)",
      price: 91.75,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/10.jpg",
    ),
    Product(
      id: "p11",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское KIDDY черный",
      rating: "Rating:3 (Medium)",
      price: 42.44,
      arUrl: "https://github.com/Saidikrom/images/raw/Saidikrom/models/folding_bed.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/11.jpg",
    ),
    Product(
      id: "p12",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: false,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское KIDDY розовый",
      rating: "Rating:3 (Medium)",
      price: 42.44,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/12.jpg",
    ),
    Product(
      id: "p13",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло для персонала CALUM (A3068-1) зеленый",
      rating: "Rating:3 (Medium)",
      price: 137.63,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/13.jpg",
    ),
    Product(
      id: "p14",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское KIDDY синий",
      rating: "Rating:3 (Medium)",
      price: 42.44,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/14.jpg",
    ),
    Product(
      id: "p15",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: false,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло посетительское SPARK серый",
      rating: "Rating:3 (Medium)",
      price: 135.34,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/15.jpg",
    ),
    Product(
      id: "p16",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское HAPPY зеленый",
      rating: "Rating:3 (Medium)",
      price: 48.17,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/16.jpg",
    ),
    Product(
      id: "p17",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло руководительское FALTO серый",
      rating: "Rating:3 (Medium)",
      price: 280.99,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/17.jpg",
    ),
    Product(
      id: "p18",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло детское HAPPY синий",
      rating: "Rating:3 (Medium)",
      price: 48.17,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/18.jpg",
    ),
    Product(
      id: "p19",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло для персонала CALUM (A3068-1) серый",
      rating: "Rating:3 (Medium)",
      price: 137.63,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/19.jpg",
    ),
    Product(
      id: "p20",
      manufacturer: "Dafna",
      size: "64 х 90(103) х 58 см",
      color: "черный",
      isAR: true,
      type: "chair",
      upholsteryMaterial: "Ткань",
      crossMaterial: "Пластик",
      maximumLoad: "120 кг",
      title: "Кресло руководительское FALTO красный",
      rating: "Rating:3 (Medium)",
      price: 280.99,
      arUrl: "https://github.com/Saidikrom/GLTF/raw/Saidikrom/stull.glb",
      description:
          "Минималистичное и лаконичное кресло Berry будет выигрышно смотреться в каждом интерьере. Выгибающая спинка кресла и подлокотники обеспечат комфортное положение сидящему человеку.",
      imgUrl:
          "https://github.com/Saidikrom/images/raw/Saidikrom/image/furnitures/20.jpg",
    ),
  ];
  var showAllFavorites = false;
  List<Product> get list {
    return [..._list];
  }

  List<Product> get favorites {
    return _list.where((product) => product.isFavorite).toList();
  }

  List<Product> get cartItems {
    return [...cartItems];
  }

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void addProduct() {
    notifyListeners();
  }

  void add() {
    // _list.add(value);
    notifyListeners();
  }

  Product findId(String productId) {
    return _list.firstWhere((product) => product.id == productId);
  }
}
