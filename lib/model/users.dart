class Room {
  Room({
    this.firstValue,
    this.secondValue,
    this.thirdValue,
  });

  String? firstValue;
  int? secondValue;
  int? thirdValue;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        firstValue: json["firstValue"],
        secondValue: json["secondValue"],
        thirdValue: json["thirdValue"],
      );

  Map<String, dynamic> toJson() => {
        "firstValue": firstValue,
        "secondValue": secondValue,
        "thirdValue": thirdValue,
      };
}
