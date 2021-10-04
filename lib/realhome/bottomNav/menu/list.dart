class MenuList {
  final String image, text, number;

  MenuList({this.image, this.text, this.number});
}

List menuList = [
  MenuList(
    image: "lib/images/food.png",
    text: "Food\n",
    number: "120 Items",
  ),
  MenuList(
    image: "lib/images/Beverage.png",
    text: "Beverages\n",
    number: "220 Items",
  ),
  MenuList(
    image: "lib/images/desert.png",
    text: "Desserts\n",
    number: "155 Items",
  ),
  MenuList(
    image: "lib/images/promotion.png",
    text: "Promotion\n",
    number: "25 Items",
  ),
];
