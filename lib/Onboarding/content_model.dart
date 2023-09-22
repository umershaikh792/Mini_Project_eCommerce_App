class OnBoardingContent {
  String title;
  String title2;
  String image;
  String description;

  OnBoardingContent(
      {required this.title,
      required this.title2,
      required this.image,
      required this.description});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
      title: "Your Holiday\nShopping\nDelivered to Screen",
      title2: "One",
      image: "images/shopping.svg",
      description:
          "There's something for everyone\nto enjoy with Sweet Shop\nFavourites."),
  OnBoardingContent(
      title: "Your Holiday\nShopping\nDelivered to Screen",
      title2: "Two",
      image: "images/shopping2.svg",
      description:
          "There's something for everyone\nto enjoy with Sweet Shop\nFavourites.")
];
