// ignore_for_file: camel_case_types

class itemList {
  itemList({
    required this.path,
    required this.price, 
    required this.description
  });
  String path;
  String price;
  String description;
}


List<itemList> newLIst = [
      itemList(
          path: '../../assets/images/av1.jpg',
          price: '\$13.2',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av2.jpg',
          price: '\$13.5',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av3.jpg',
          price: '\$15.2',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av4.jpg',
          price: '\$12.5',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av5.jpg',
          price: '\$8.3',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av6.jpg',
          price: '\$12.2',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av7.jpg',
          price: '\$11.4',
          description: 'hello'),
      itemList(
          path: '../../assets/images/av8.jpg',
          price: '\$10.2',
          description: 'hello'),
    ];