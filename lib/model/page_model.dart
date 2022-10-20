class PageModel {
  final String image;
  final String title;
  final String desc;

  PageModel({required this.image, required this.title, required this.desc});

  static List<PageModel> pages = [
    PageModel(
      image: 'assets/images/img1.png',
      title: 'Shoot',
      desc:
      'Lorem ipsum dolor sit amet,\nconsectetur adlipicing elit, sed do\neiusmod tempor incididunt ut labore',
    ),
    PageModel(
      image: 'assets/images/img2.png',
      title: 'Edit',
      desc:
      'Lorem ipsum dolor sit amet,\nconsectetur adlipicing elit, sed do\neiusmod tempor incididunt ut labore',
    ),
    PageModel(
      image: 'assets/images/img3.png',
      title: 'Share',
      desc:
      'Lorem ipsum dolor sit amet,\nconsectetur adlipicing elit, sed do\neiusmod tempor incididunt ut labore',
    ),
  ];
}
