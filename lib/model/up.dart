class Up {
  final String id;
  final int mid;
  final String name;
  final int videoCount;
  final int playlistCount;

  Up(
      {required this.id,
      required this.mid,
      required this.name,
      required this.videoCount,
      required this.playlistCount});

  factory Up.fromJson(Map<String, dynamic> json) => Up(
      id: json['id'],
      mid: json['mid'],
      name: json['name'],
      videoCount: json['videoCount'],
      playlistCount: json['playlistCount']);
}
