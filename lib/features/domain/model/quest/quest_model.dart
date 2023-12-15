
class QuestDataModel {
  final String id;
  final String question;
  final String choice1;
  final String choice2;
  final String choice3;
  final String correctAnswer;
  final String? questId;


  QuestDataModel({
    required this.id,
    required this.question,
    required this.choice1,
    required this.choice2,
    required this.choice3,
    required this.correctAnswer,
    this.questId
  });

  factory QuestDataModel.fromJson(Map<String, dynamic> json) {
    return QuestDataModel(
        id: json['id'],
        question: json['question'],
        choice1: json['choice1'],
        choice2: json['choice2'],
        choice3: json['choice3'],
        correctAnswer: json['correctAnswer'],
        questId: json['questId'],
        );
        
  }
}
