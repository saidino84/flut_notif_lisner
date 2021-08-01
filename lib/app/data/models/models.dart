class Message {
  // The name of the package sending the notification.
  String? packageName;

  /// The title of the notification.
  String? title;

  /// The message in the notification.
  String? message;

  /// The timestamp of the notification.
  DateTime? timeStamp;

  Message({
    this.packageName,
    this.title,
    this.message,
    this.timeStamp,
  });

  factory Message.fromMap(Map<dynamic, dynamic> map) {
    DateTime time = DateTime.now();
    String? name = map['packageName'];
    String? message = map['message'];
    String? title = map['title'];

    return Message(
      packageName: name,
      title: title,
      message: message,
      timeStamp: time,
    );
  }

  @override
  String toString() =>
      '$runtimeType - package: $packageName, title: $title, message: $message, timestamp: $timeStamp';
}
