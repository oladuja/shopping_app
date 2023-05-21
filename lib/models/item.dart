class Item {
  final String name, make, image, details;
  final double price;

  Item({
    required this.name,
    required this.details,
    required this.make,
    required this.image,
    required this.price,
  });
}

List<Item> items = [
  Item(
    name: 'Defato',
    make: 'Sweater',
    image: 'assets/images/items/Image1.png',
    price: 50.00,
    details:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum. Etiam at faucibus lorem, sit amet facilisis orci. Phasellus facilisis dui eget nunc malesuada, eget gravida dolor bibendum. Integer finibus, erat in elementum ultrices, quam mauris tempor purus, a pulvinar neque lectus nec est. Vestibulum vestibulum mauris ac commodo varius.',
  ),
  Item(
    name: 'BeoPlay Speaker',
    make: 'Bang and Olufsen',
    image: 'assets/images/items/Image2.png',
    price: 755,
    details:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum. Etiam at faucibus lorem, sit amet facilisis orci. Phasellus facilisis dui eget nunc malesuada, eget gravida dolor bibendum. Integer finibus, erat in elementum ultrices, quam mauris tempor purus, a pulvinar neque lectus nec est. Vestibulum vestibulum mauris ac commodo varius.',
  ),
  Item(
    name: 'Leather WristWatch',
    make: 'Tag Heuer',
    image: 'assets/images/items/Image3.png',
    price: 450,
    details:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum. Etiam at faucibus lorem, sit amet facilisis orci. Phasellus facilisis dui eget nunc malesuada, eget gravida dolor bibendum. Integer finibus, erat in elementum ultrices, quam mauris tempor purus, a pulvinar neque lectus nec est. Vestibulum vestibulum mauris ac commodo varius.',
  ),
  Item(
    name: 'Airpods',
    make: 'Apple Inc',
    image: 'assets/images/items/Image4.png',
    price: 120,
    details:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum. Etiam at faucibus lorem, sit amet facilisis orci. Phasellus facilisis dui eget nunc malesuada, eget gravida dolor bibendum. Integer finibus, erat in elementum ultrices, quam mauris tempor purus, a pulvinar neque lectus nec est. Vestibulum vestibulum mauris ac commodo varius.',
  ),
  Item(
    name: 'Smart Bluetooth Speaker',
    make: 'Google LLC',
    image: 'assets/images/items/Image5.png',
    price: 9000,
    details:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum. Etiam at faucibus lorem, sit amet facilisis orci. Phasellus facilisis dui eget nunc malesuada, eget gravida dolor bibendum. Integer finibus, erat in elementum ultrices, quam mauris tempor purus, a pulvinar neque lectus nec est. Vestibulum vestibulum mauris ac commodo varius.',
  ),
  Item(
    name: 'Nike Dri-FIT Long Sleeve',
    make: 'Nike',
    image: 'assets/images/items/Image6.png',
    price: 1500,
    details:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum. Etiam at faucibus lorem, sit amet facilisis orci. Phasellus facilisis dui eget nunc malesuada, eget gravida dolor bibendum. Integer finibus, erat in elementum ultrices, quam mauris tempor purus, a pulvinar neque lectus nec est. Vestibulum vestibulum mauris ac commodo varius.',
  ),
];
