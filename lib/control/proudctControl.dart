import '../modle/produc.dart';

class ProductController {
  List<ProductModel> _allProducts = [];
  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "title": "iPhone 9",
      "description": "An apple mobile which is nothing like apple",
      "price": 549,
      "discountPercentage": 12.96,
      "rating": 4.69,
      "stock": 94,
      "brand": "Apple",
      "category": "smartphones",
      "thumbnail": "assets/image/1.jpg"
    },
    {
      "id": 2,
      "title": "iPhone X",
      "description":
          "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
      "price": 899,
      "discountPercentage": 17.94,
      "rating": 4.44,
      "stock": 34,
      "brand": "Apple",
      "category": "smartphones",
      "thumbnail": "assets/image/2.jpg",
    },
    {
      "id": 3,
      "title": "Samsung Universe 9",
      "description": "assets/image/3.jpg",
      "price": 1249,
      "discountPercentage": 15.46,
      "rating": 4.09,
      "stock": 36,
      "brand": "Samsung",
      "category": "smartphones",
      "thumbnail": "assets/image/3.jpg",
    },
    {
      "id": 4,
      "title": "OPPOF19",
      "description": "OPPO F19 is officially announced on April 2021.",
      "price": 280,
      "discountPercentage": 17.91,
      "rating": 4.3,
      "stock": 123,
      "brand": "OPPO",
      "category": "smartphones",
      "thumbnail": "assets/image/4.jpg",
    },
    {
      "id": 5,
      "title": "Huawei P30",
      "description":
          "Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.",
      "price": 499,
      "discountPercentage": 10.58,
      "rating": 4.09,
      "stock": 32,
      "brand": "Huawei",
      "category": "smartphones",
      "thumbnail": "assets/image/5.jpg",
    },
    {
      "id": 6,
      "title": "MacBook Pro",
      "description":
          "MacBook Pro 2021 with mini-LED display may launch between September, November",
      "price": 1749,
      "discountPercentage": 11.02,
      "rating": 4.57,
      "stock": 83,
      "brand": "Apple",
      "category": "laptops",
      "thumbnail": "assets/image/6.png",
    },
    {
      "id": 7,
      "title": "Samsung Galaxy Book",
      "description":
          "Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched",
      "price": 1499,
      "discountPercentage": 4.15,
      "rating": 4.25,
      "stock": 50,
      "brand": "Samsung",
      "category": "laptops",
      "thumbnail": "assets/image/7.jpg",
    },
    {
      "id": 8,
      "title": "Microsoft Surface Laptop 4",
      "description":
          "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
      "price": 1499,
      "discountPercentage": 10.23,
      "rating": 4.43,
      "stock": 68,
      "brand": "Microsoft Surface",
      "category": "laptops",
      "thumbnail": "assets/image/8.jpg",
    },
    {
      "id": 9,
      "title": "Infinix INBOOK",
      "description":
          "Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty",
      "price": 1099,
      "discountPercentage": 11.83,
      "rating": 4.54,
      "stock": 96,
      "brand": "Infinix",
      "category": "laptops",
      "thumbnail": "assets/image/9.jpg",
    },
    {
      "id": 10,
      "title": "HP Pavilion 15-DK1056WM",
      "description":
          "HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10",
      "price": 1099,
      "discountPercentage": 6.18,
      "rating": 4.43,
      "stock": 89,
      "brand": "HP Pavilion",
      "category": "laptops",
      "thumbnail": "assets/image/10.jpeg",
    }
  ];

  getAllProducts() {
    data.forEach((element) {
      ProductModel model = ProductModel.fromJson(element);
      _allProducts.add(model);
    });
  }

  List<ProductModel> get products => _allProducts;
}
