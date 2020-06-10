class BlobInfoV1 {
  /* Identification */
  String id;
  String group;
  String name;

  /* Content */
  int size;
  String content_type;
  DateTime create_time;
  DateTime expire_time;
  bool completed;

  BlobInfoV1(String id, String group, String name,
      {int size = 0, String content_type, DateTime expire_time}) {
    this.id = id;
    this.group = group;
    this.name = name;
    this.size = size;
    this.content_type = content_type;
    create_time = DateTime.now();
    this.expire_time = expire_time;
    completed = false;
  }

  factory BlobInfoV1.fromJson(Map<String, dynamic> json) {
    var c = BlobInfoV1(json['id'], json['group'], json['name']);
    c.fromJson(json);
    return c;
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    group = json['group'];
    name = json['name'];
    size = json['size'];
    content_type = json['content_type'];
    create_time = DateTime.tryParse(json['create_time']);
    expire_time = DateTime.tryParse(json['expire_time']);
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'group': group,
      'name': name,
      'size': size,
      'content_type': content_type,
      'create_time': create_time.toIso8601String(),
      'expire_time': expire_time.toIso8601String(),
      'completed': completed
    };
  }
}
