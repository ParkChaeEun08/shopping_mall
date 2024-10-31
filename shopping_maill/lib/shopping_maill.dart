import 'dart:io';

class Product extends ShoppingMall {
  late String name;
  late int price;

  Product(this.name, this.price);

  @override
  String toString() {
    return 'name / {price}원';
  }

  List<Product> products = [
    Product('셔츠', 45000),
    Product('원피스', 30000),
    Product('반팔티', 35000),
    Product('반바지', 38000),
    Product('양말', 5000)
  ];
}

class ShoppingMall {
  List<Product> productList = [];
  List<Product> cart = [];
  int totalPrice = 0;
} // ShoppingMall 클래스, 상품을 정의하기 위한 Product 클래스 정의 , 판매하는 상품 목록 (List<Product>)

void showProducts() {
  /*
  for (var pro in product.products) {
    print(pro);
  }
  */
}

// 상품목록을 출력하는 매서드 showProducts()
void addTocart() {
  print('상품 이름을 입력하세요:');
  String? productName = stdin.readLineSync();
  print('상품 개수를 입력하세요.:');
  String? productCountStr = stdin.readLineSync();
  int? productCont = int.tryParse(productCountStr ?? '');

  if (productName == null || productCont == null) {
    print('입력값이 올바르지 않아요!');
    return;
  }

  if (productCont <= 0) {
    print('0개보다 많은 개수의 상품만 담을 수 있어요!');
    return;
  }
}

void showTotalPrice() {
  print('장바구니에 totalPrice원 어치를 담으셨네요!'); // 수정 필요
}

void main() {
  bool running = true;

  while (running) {
    print(
        '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        showProducts();
        break;

      case '2':
        addTocart();
        break;

      case '3':
        showTotalPrice();
        break;

      case '4':
        print('이용해 주셔서 감사합니다 ~ 안녕히 가세요!');
        running = false;
        break;

      default:
        print('지원하지 않는 기능입니다! 다시 시도해 주세요..');
    }
  }
}
// 상품을 장바구니에 담는 매서드 addToCart()

// 장바구니에 담은 상품들의 총 가격 (int)

// 장바구니에 담은 상품의 총 가격을 출력하는 매서드 showTotal()

// 상품이름 (string) , 가격 (int)


