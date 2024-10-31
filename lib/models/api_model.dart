class UserModel {
  List<dynamic> data;

  UserModel({required this.data});

  factory UserModel.getData(Map<String, dynamic> json) {
    List<dynamic> fullData = [];

    for (int i = 0; i < 10; i++) {
      fullData.add(json['results'][i]);
    }

    fullData = fullData.map((user) =>
    {'name' : user['name']['first'] + user['name']['last'],
      'location' : user['location']['city'],
      'pic' : user['picture']['large']
    }).toList();
  return UserModel(data: fullData);
  }
}
