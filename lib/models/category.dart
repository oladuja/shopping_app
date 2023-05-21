class Category {
  final String icon, name;

  Category({
    required this.icon,
    required this.name,
  });
}

List<Category> categories = [
  Category(
    icon: 'assets/images/Icon_Mens Shoe.png',
    name: 'Men',
  ),
  Category(
    icon: 'assets/images/Icon_Womens Shoe.png',
    name: 'Women',
  ),
  Category(
    icon: 'assets/images/Icon_Devices.png',
    name: 'Devices',
  ),
  Category(
    icon: 'assets/images/Icon_Gadgets.png',
    name: 'Gadgets',
  ),
  Category(
    icon: 'assets/images/Icon_Gaming.png',
    name: 'Gaming',
  ),
];
