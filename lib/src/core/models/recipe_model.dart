class RecipeModel {
  late String author;
  late String title;
  late String category;
  late String duration;
  late String imgAuthor;
  late String imgCover;
  late bool favorite;
  late List<String> ingredients;
  late List<String> steps;

  RecipeModel({
    required this.author,
    required this.title,
    required this.category,
    required this.duration,
    required this.imgAuthor,
    required this.imgCover,
    required this.favorite,
    required this.ingredients,
    required this.steps,
  });

  RecipeModel.fromJson(Map<String, dynamic> json) {
    author = json['author'].toString();
    title = json['title'].toString();
    category = json['category'].toString();
    duration = json['duration'].toString();
    imgAuthor = json['img_author'].toString();
    imgCover = json['img_cover'].toString();
    favorite = json['favorite'];
    ingredients = List<String>.from(json['ingredients']);
    steps = List<String>.from(json['steps']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['title'] = title;
    data['category'] = category;
    data['duration'] = duration;
    data['img_author'] = imgAuthor;
    data['img_cover'] = imgCover;
    data['favorite'] = favorite;
    data['ingredients'] = ingredients;
    data['steps'] = steps;
    return data;
  }

  static List<RecipeModel> fromJsonList(List<dynamic> list) {
    return list.map((item) => RecipeModel.fromJson(item)).toList();
  }
}
