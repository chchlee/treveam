// 상품 데이터 페이지

class Product{
  final String? imageUrl;
  final String? title;
  final int? price;
  final int? discount;

  Product({this.imageUrl, this.title, this.price, this.discount});
}

List<Product> productList = [
  Product(
    imageUrl: "",
    title: "",
    price: 10000,
    discount: 7,
  ),
];