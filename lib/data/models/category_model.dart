class CategoryModel {
  final String name;

  CategoryModel({required this.name});

  factory CategoryModel.fromJson(String json) {
    return CategoryModel(name: json);
  }

  static List<CategoryModel> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => CategoryModel.fromJson(json)).toList();
  }
}
