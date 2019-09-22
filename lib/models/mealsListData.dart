class MealsListData {
  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String> meals;
  int kacl;

  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = "",
    this.endColor = "",
    this.meals,
    this.kacl = 0,
  });

  static List<MealsListData> tabIconsList = [
    MealsListData(
      imagePath: 'assets/fitness_app/iras.png',
      titleTxt: 'IRAS',
      kacl: 525,
      meals: ["Bread,", "Peanut butter,", "Apple"],
      startColor: "#FA7D82",
      endColor: "#FFB295",
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/notice.png',
      titleTxt: 'Notice Board',
      kacl: 602,
      meals: ["Salmon,", "Mixed veggies,", "Avocado"],
      startColor: "#738AE6",
      endColor: "#5C5EDD",
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/courses.png',
      titleTxt: 'Add Your Courses',
      kacl: 2,
      meals: ["Recommend:", "800 kcal"],
      startColor: "#FE95B6",
      endColor: "#FF5287",
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/help.png',
      titleTxt: 'Help and Support',
      kacl: 2,
      meals: ["Recommend:", "703 kcal"],
      startColor: "#6F72CA",
      endColor: "#1E1466",
    ),
  ];
}
