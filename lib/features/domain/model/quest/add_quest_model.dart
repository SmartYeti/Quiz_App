class AddQuestModel {
  final String question;
  final String choice1;
  final String choice2;
  final String choice3;
  final String correctAnswer;
  final String? questId;

  AddQuestModel(
      {required this.question,
      required this.choice1,
      required this.choice2,
      required this.choice3,
      required this.correctAnswer,
      this.questId});
}
