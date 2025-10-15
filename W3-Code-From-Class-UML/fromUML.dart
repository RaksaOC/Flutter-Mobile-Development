class Question {
  String title;
  List<String> choices;
  String goodChoice;

  Question({
    required this.title,
    required this.choices,
    required this.goodChoice,
  });
}

class Answer {
  String answerChoice;
  Question question;

  Answer({required this.answerChoice, required this.question});


  // method to check if the answer is good
  bool get isGoodAnswer {
    return answerChoice == question.goodChoice;
  }
}

class Quiz {
  List<Question> _questions = [];
  List<Answer> _answers = [];

  // getters for the questions and answers
  List<Question> get questions => _questions;
  List<Answer> get answers => _answers;

  // method to add an answer to the quiz
  void addAnswer(Answer answer) {
    _answers.add(answer);
  }

  // method to get the score of the quiz
  int getScore() {
    int score = 0;
    for (var answer in _answers) {
      if (answer.isGoodAnswer) {
       
        score++;
      }
    }
    
    
    return score;
  }
}
